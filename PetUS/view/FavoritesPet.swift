//
//  FavoritesPet.swift
//  PetUS
//
//  Created by Luane dos Santos on 25/01/21.
//

import Foundation
import SwiftUI
import UIKit


struct FavoritesPets: View {
    
    
    let pets = Pet.all
    
    var body: some View{
        let columns: [GridItem] =
            Array(repeating: .init(.flexible(maximum: 300)), count: 2)
            //[GridItem(.adaptive(minimum: 170))]
               //  Array(repeating: .init(.adaptive(minimum)), count: 2)
        NavigationView{
       ZStack{
            VStack{
               // HeadeView()
            ScrollView{

                LazyVGrid(columns: columns, spacing: 30.0){ //[GridItem(.fixed(150)), GridItem(.fixed(150))],alignment: .center, spacing: 20.0){
                    ForEach(0..<pets.count){ index in

                        //if(pets[index].picture == "dog"){
                        CellGrid(pet: pets[index])//.frame(width:150)
                            //.padding(.trailing,20).padding(.leading,20)
                        //}
                        //.cornerRadius(30)//.cornerRadius(30).border(Color("border"), width: 3)//.fill(Color.green))//)//)//.clipShape(Rectangle())()

                        }
                }.padding(.top,180).padding(.horizontal,0)
            
            }.background(LinearGradient(gradient: Gradient(colors: [Color("Back"), Color("BackSec")]), startPoint: .top, endPoint: .bottom)).edgesIgnoringSafeArea(.top)
            }
        
       }.edgesIgnoringSafeArea(.top)
            .navigationBarTitleDisplayMode(.large)

        
            .navigationBarTitle("Pets Favoritos")
            
        }.edgesIgnoringSafeArea(.top)
    }
}

