//
//  FavoritesPet.swift
//  PetUS
//
//  Created by Luane dos Santos on 25/01/21.
//

import Foundation
import SwiftUI

struct FavoritesPets: View {
    
    
    let pets = Pet.all
    
    var body: some View {
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible(minimum: 50, maximum: 150)), GridItem(.flexible(minimum: 50, maximum: 150))]) {
                    ForEach(0..<pets.count){ index in
                        VStack{
                            Image(pets[index].picture).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).padding()
                            Text(pets[index].name).font(.body)
                        }.background(Color.blue).cornerRadius(30)
                    }
                }
            
        }
    }
}

