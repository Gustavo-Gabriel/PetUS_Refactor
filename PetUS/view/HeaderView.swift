//
//  HeaderView.swift
//  PetUS
//
//  Created by Gustavo Anjos on 19/01/21.
//

import Foundation
import SwiftUI

struct HeaderView: View{
    var body: some View {
        Text("Encontre um Pet").padding()
            .foregroundColor(Color("titleColor"))
            .font(
                .system(size: 34.0, weight: .bold, design: .default))
            .padding(.vertical,40)
        
    }
}
