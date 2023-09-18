//
//  ProductDetailView.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 17/09/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        VStack {
            Image("icon")
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 225)
            
            VStack{
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(product.description)
                    .font(.callout)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                HStack(spacing: 40) {
                    
                    DetailCell(title: "Calories",
                               value: product.calories)
                    DetailCell(title: "Carbs",
                               value: product.carbs)
                    DetailCell(title: "Protein",
                               value: product.calories)
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("$\(product.price, specifier: "%.2f") - Add to Order")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(Color("Primary"))
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(PrimaryButton() , alignment: .topTrailing)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: MockData.sampleProduct)
    }
}
