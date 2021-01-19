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
        VStack{
            HStack{
                VStack{
                    HStack{
                        
        
                        Spacer()
                    }
                    
                    Spacer()
                    
                }.background(Color(glass)).blur(radius: 40, opaque: false)
                
            }
            
            
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color(colorBackgroundGradient1), Color(colorBackgroundGradient2)]), startPoint: .topLeading, endPoint: .bottom)).edgesIgnoringSafeArea(.top)
    }
    
}
