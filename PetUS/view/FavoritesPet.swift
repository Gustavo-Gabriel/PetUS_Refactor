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
        NavigationView{
       ZStack{
            VStack{
               // HeadeView()
                Spacer()
            ScrollView{

                LazyVGrid(columns: [GridItem(.flexible(minimum: 50, maximum: 150)), GridItem(.flexible(minimum: 50, maximum: 150))],alignment: .center, spacing: 0){
                    ForEach(0..<pets.count){ index in

                        //if(pets[index].picture == "dog"){
                        CellGrid(pet: pets[index]).padding(.horizontal,4)
                        //}
                        //.cornerRadius(30)//.cornerRadius(30).border(Color("border"), width: 3)//.fill(Color.green))//)//)//.clipShape(Rectangle())()

                        }
                }.padding(.top,180)
            
            }.background(LinearGradient(gradient: Gradient(colors: [Color("Back"), Color("BackSec")]), startPoint: .top, endPoint: .bottom)).edgesIgnoringSafeArea(.top)
            }
        
       }.edgesIgnoringSafeArea(.top)
            .navigationBarTitleDisplayMode(.large)

        
            .navigationBarTitle("Pets Favoritos")
            
        }.edgesIgnoringSafeArea(.top)
    }
}

