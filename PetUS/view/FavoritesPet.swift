//
//  FavoritesPet.swift
//  PetUS
//
//  Created by Luane dos Santos on 25/01/21.
//

import Foundation
import SwiftUI


struct DataModel: Identifiable {
let id: String
let name: String
let imageName: String
}

struct FavoritesPets: View {
 
 
    let data: [DataModel] = [
    .init (id: "0", name: "SteveJobs", imageName: "SteveJobs"),
    .init (id: "1", name: "Satya Nadella", imageName: "Satya Nadella "),
        .init (id:" 2 ", name:" Jeff Bezos ", imageName:" Jeff Bezos "),
        .init (id:" 3 ", name:" Tim Cook ", imageName:" Tim Cook " )
    ]

   
    var body: some View {
        NavigationView {
        List {
        ForEach (data) {items in
            ForEach (0..<2) {item in CollectionView (data: items)
          }
        }
        } .navigationBarTitle ("CollectionView")
           }
        }
        }
struct CollectionView: View {
    let data: DataModel
    var body: some View {
        VStack {
            HStack {
                ForEach (0..<2) {items in
                 Spacer ()
                    Image ( self .data.imageName)
                    .resizable ()
                    .frame (width: 150, height: 150)
                    .foregroundColor (
                    .yellow ) .clipShape (Circle ())
                    .shadow (radius: 10)
                    Spacer ()
                } .padding (.bottom, 16)
            }
            HStack {
                Spacer ()
                Text ( self .data.name)
                Spacer ()
                Text ( self .data.name)
                Spacer ()
                 }
   }
}
}
