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
                }.foregroundColor(Color(navColor))
            
            Text("Settings").tabItem{
                    Image(systemName: "suit.heart")
                    Text("Pets Favoritos")
                }
        }.accentColor(Color(navColor))
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



