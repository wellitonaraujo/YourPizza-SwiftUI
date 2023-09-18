//
//  Button.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 17/09/23.
//

import SwiftUI

struct HideButton: View {
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        Button {
            isShowingDetail = false
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

struct HideButton_Previews: PreviewProvider {
    static var previews: some View {
        HideButton(isShowingDetail: .constant(true))
    }
}
