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
        VStack(alignment: .leading, spacing: 0){
            VStack{
            Image(pet.picture).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).padding()
            Text(pet.name).font(.body)
            }.background(Color("fundoCell")).cornerRadius(20)
        }.background(RoundedRectangle(cornerRadius: 20.0).stroke(Color("border"), lineWidth: 5.0))
    }
}
