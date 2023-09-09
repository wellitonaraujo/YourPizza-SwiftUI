//
//  ListView.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            List(MockData.products) { product in
                ProductCell(product: product)
            }
            .navigationTitle("Pizzas")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
