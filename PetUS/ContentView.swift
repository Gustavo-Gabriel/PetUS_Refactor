//
//  ContentView.swift
//  PetUS
//
//  Created by Gustavo Anjos on 19/01/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        VStack{
            
            Text("Encontre um pet")
                .padding()
                .foregroundColor(Color(.blue))
            
            Spacer()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
