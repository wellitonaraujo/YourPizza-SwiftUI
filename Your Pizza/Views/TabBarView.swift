//
//  TabBarView.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            ListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard.fill")
                    Text("Order")
                }
            
            ListView()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Account")
                }
        }
        .accentColor(Color("Primary"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
