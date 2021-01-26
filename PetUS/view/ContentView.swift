//
//  ContentView.swift
//  PetUS
//
//  Created by Gustavo Anjos on 19/01/21.
//  Edited by Luane dos Santos on 22/01/21.

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("titleColor"))
       UINavigationBar.appearance().backgroundColor = UIColor(Color("titleColor"))
      //  UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("titleColor"))]
    }
    
    let pets = Pet.all

    var body: some View {
        NavigationView{
        TabView{
            
            FindPet().tabItem{ 
                    Image(systemName: "magnifyingglass")
                Text("Encontre um Pet")
                    .navigationBarTitle(Text("Encontre um Pet"))
                        
                }.foregroundColor(Color("iconColor"))
            
            
            FavoritesPets().tabItem{
                    Image(systemName: "suit.heart")
                    Text("Pets Favoritos")
                        .navigationBarTitle(Text("Pets Favoritos"))
                }
           
        }.accentColor(Color("iconColor"))
            
       
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



}
