//
//  ProductDetailView.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 17/09/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            YourPizzaRemoteImage(urlString: product.imageURL)
                .scaledToFit()
                
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
                PrimaryButton(
                    title: "$\(product.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 330, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            HideButton(isShowingDetail: $isShowingDetail), alignment: .topTrailing)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: MockData.sampleProduct, isShowingDetail: .constant(true))
    }
}
