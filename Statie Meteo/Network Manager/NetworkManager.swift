//
//  NetworkManager.swift
//  Statie Meteo
//
//  Created by Laurentiu Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case unknownError
    case decodingError
}

let baseURL = "https://infinite-depths-93264.herokuapp.com/"
let newestMoviesURL = "api/meteo"

class NetworkManager {
    func getNewestMeteos(completion: @escaping (Result<[Masuratoare], NetworkError>) -> Void) {
        let newestAPIString = baseURL + newestMoviesURL
        guard let url = URL(string: newestAPIString) else {
            completion(.failure(.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
//        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) {data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.unknownError))
                return
            }
                
            print("data: \(String(data: data, encoding: .utf8)!)")
            
            let meteo = try? JSONDecoder().decode(Meteo.self, from: data)
            meteo == nil ? completion(.failure(.decodingError)) : completion(.success(meteo!.data))
        }.resume()
    }
    
    func getSpecificMeteo(meteoId: String, completion: @escaping (Result<Meteo, NetworkError>) -> Void) {
            let newestAPIString = baseURL + newestMoviesURL + "/" + meteoId
            guard let url = URL(string: newestAPIString) else {
                completion(.failure(.invalidURL))
                return
            }
            
            var request = URLRequest(url: url)
    //        request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) {data, response, error in
                guard let data = data, error == nil else {
                    completion(.failure(.unknownError))
                    return
                }
                    
                print(String(data: data, encoding: .utf8)!)
                
                let meteo = try? JSONDecoder().decode(Meteo.self, from: data)
                meteo == nil ? completion(.failure(.decodingError)) : completion(.success(meteo!))
            }.resume()
        }
}
