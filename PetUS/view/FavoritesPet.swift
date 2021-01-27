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
        ZStack{
            VStack{
                HeadeView()
                Spacer()
            ScrollView{
            
                LazyVGrid(columns: [GridItem(.flexible(minimum: 50, maximum: 150)), GridItem(.flexible(minimum: 50, maximum: 150))]) {
                    ForEach(0..<pets.count){ index in
                        VStack{
                            VStack{
                            Image(pets[index].picture).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).padding()
                            Text(pets[index].name).font(.body)
                            }.background(Color("fundoCell")).cornerRadius(30)
                        }.background(RoundedRectangle(cornerRadius: 30.0).stroke(Color("border"), lineWidth: 5.0))//.cornerRadius(30)//.cornerRadius(30).border(Color("border"), width: 3)//.fill(Color.green))//)//)//.clipShape(Rectangle())()
                    }
                }.padding(.top,30)
                //.background(LinearGradient(gradient: Gradient(colors: [Color("Back"), Color("BackSec")]), startPoint: .top, endPoint: .bottom))
            
            }//.background(LinearGradient(gradient: Gradient(colors: [Color("Back"), Color("BackSec")]), startPoint: .top, endPoint: .bottom))
            }.background(LinearGradient(gradient: Gradient(colors: [Color("Back"), Color("BackSec")]), startPoint: .top, endPoint: .bottom))
        }.edgesIgnoringSafeArea(.top)
    }
}

