//
//  HeadeFav.swift
//  PetUS
//
//  Created by Luane dos Santos on 26/01/21.
//

import Foundation
import SwiftUI

struct HeadeView: View{
    var body: some View {
        Text("Encontre um Pet").padding()
            .foregroundColor(Color("titleColor"))
            .font(
                .system(size: 34.0, weight: .bold, design: .default))
            .padding(.top,60).padding(.trailing, 100)
        
    }

}
