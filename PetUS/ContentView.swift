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
            FindPet()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Settings")
                .tabItem{
                    Image(systemName: "gear")
                    Text("Home")
                }
        }
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
