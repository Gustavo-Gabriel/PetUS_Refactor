//
//  FindPet.swift
//  PetUS
//
//  Created by Gustavo Anjos on 19/01/21.
//

import Foundation
import SwiftUI
import UIKit

struct FindPet: View {
    
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    HeaderView()
                    Spacer()
                }
                
                CardPet()
                Spacer()
            HStack{
                    
                Button(action:{
                    
                }){
                    Image(systemName: "phone").frame(minWidth: 80, minHeight: 80).background(Color.white).foregroundColor(Color(navColor)).clipShape(Circle()).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    
                }
                .padding(.leading,100).padding(.bottom,55)
                    Spacer()
                Button(action:{
                    
                }){
                    Image(systemName: "suit.heart").frame(minWidth: 80, minHeight: 80).background(Color.white).foregroundColor(Color(navColor)).clipShape(Circle()).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    
                }.padding(.bottom,55).padding(.trailing,100)

                }
                
            }
            
        }.background(Image( "petBg"))
        
    }
    
}

