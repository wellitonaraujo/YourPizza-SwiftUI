//
//  DetailCell.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 18/09/23.
//

import SwiftUI

struct DetailCell: View {
    var title: String
    var value: Int
    
    var body: some View {
        VStack(){
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

struct DetailCell_Previews: PreviewProvider {
    static var previews: some View {
        DetailCell(title: "", value: 0)
    }
}
