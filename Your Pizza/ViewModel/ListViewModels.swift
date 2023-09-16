//
//  ListViewModel.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import Foundation

final class ListViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getProducts() {
        isLoading = true
        Service.shared.getProdcuts {  result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let products):
                    self.products = products
                
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidCompleted:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
