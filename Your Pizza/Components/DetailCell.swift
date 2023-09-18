//
//  DetailCell.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 18/09/23.
//

import SwiftUI

struct DetailCell: View {
    var name: String = ""
    var description: String = ""
    var title: String = ""
    var value: Int = 0
    
    var body: some View {
        VStack(){
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(description)
                .font(.callout)
                .fontWeight(.thin)
                .multilineTextAlignment(.leading)
          
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
        DetailCell()
    }
}
