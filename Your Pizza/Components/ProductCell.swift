//
//  ProductCell.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct ProductCell: View {
    let product: Product
    
    var body: some View {
        HStack {
            Image(systemName: "car")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:  90, alignment: .center)
                .cornerRadius(8)
           
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("R$ \(product.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: MockData.sampleProduct)
    }
}
