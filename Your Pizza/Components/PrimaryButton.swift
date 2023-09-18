//
//  PrimaryButton.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 18/09/23.
//

import SwiftUI

struct PrimaryButton: View {
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 50)
            .foregroundColor(.white)
            .background(Color("Primary"))
            .cornerRadius(10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "TEst")
    }
}
