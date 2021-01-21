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
                
            }
            
        }.background(Image( "petBg"))
        
    }
    
}

