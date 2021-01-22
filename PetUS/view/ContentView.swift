//
//  ContentView.swift
//  PetUS
//
//  Created by Gustavo Anjos on 19/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
            FindPet().tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Encontre um Pet")
                }.foregroundColor(Color("iconColor"))
            
            Text("Settings").tabItem{
                    Image(systemName: "suit.heart")
                    Text("Pets Favoritos")
                }
        }.accentColor(Color("iconColor"))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



