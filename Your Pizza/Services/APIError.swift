//
//  APIError.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import Foundation

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case invalidCompleted
}
