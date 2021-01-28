//
//  CellGrid.swift
//  PetUS
//
//  Created by Luane dos Santos on 27/01/21.
//
import Foundation

import SwiftUI

struct CellGrid: View {
    init(pet: Pet) {
        self.pet = pet
    }
    
    let pet: Pet
    
    var body: some View{
        VStack{
            VStack{
                Image(pet.picture).resizable().aspectRatio(contentMode: .fit).frame(height: 150).clipShape(RoundedRectangle(cornerRadius:15.0)).padding()
            Text(pet.name)
                .padding(.horizontal)
                .font(.system(size: 18, weight: .heavy, design: .default))
                .foregroundColor(Color("textFavColor")).padding(.bottom,20)
            }.background(Color("fundoCell")).cornerRadius(20)
        }.background(RoundedRectangle(cornerRadius: 20.0).stroke(Color("border"), lineWidth: 5.0))                    .frame(width: 250)

    }
}
