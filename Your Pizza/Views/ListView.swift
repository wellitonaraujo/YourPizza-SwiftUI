//
//  ListView.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = ListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedItem: Product?
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.products) { product in
                    ProductCell(product: product)
                        .onTapGesture {
                            selectedItem = product
                            isShowingDetail = true
                        }
                }
                .navigationTitle("Menu")
            }
            .onAppear {
                viewModel.getProducts()
            }
            .blur(radius: isShowingDetail ? 15 : 0)
            
            if isShowingDetail {
                ProductDetailView(product: selectedItem!, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
