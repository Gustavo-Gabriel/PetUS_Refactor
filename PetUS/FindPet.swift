//
//  FindPet.swift
//  PetUS
//
//  Created by Gustavo Anjos on 19/01/21.
//

import Foundation
import SwiftUI

struct FindPet: View {
    
    var body: some View {
        VStack{
            HStack{
                Text("Encontre um pet")
                    .padding()
                    .foregroundColor(Color(.white))
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .padding(.vertical, 70)
                
                Spacer()
            }
            
            Spacer()
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color(colorBackgroundGradient1), Color(colorBackgroundGradient2)]), startPoint: .topLeading, endPoint: .bottomTrailing)).edgesIgnoringSafeArea(.top)
    }
    
}
