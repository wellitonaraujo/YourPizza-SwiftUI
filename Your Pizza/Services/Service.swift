//
//  Service.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import Foundation


final class Service {
    static let shared = Service()
    
    private let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    
    private init() {}
    
    func getProdcuts(completed: @escaping (Result<[Product], APIError>) -> Void) {
        guard let url = URL(string: baseURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, response, error in
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(Response.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}


