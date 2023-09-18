//
//  Button.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 17/09/23.
//

import SwiftUI

struct PrimaryButton: View {
    @State var closeMidal: Bool = false
    
    var body: some View {
        Button {
            closeMidal.toggle()
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Primary"))
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .foregroundColor(.white)
                    .frame(width:40, height: 40)
            }
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
