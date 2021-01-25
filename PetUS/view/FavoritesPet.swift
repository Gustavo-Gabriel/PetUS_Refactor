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
    .init (id: "0", name: "SteveJobs", imageName: "cat"),
    .init (id: "1", name: "Satya Nadella", imageName: "cat"),
        .init (id:" 2 ", name:" Jeff Bezos ", imageName:"dog"),
        .init (id:" 3 ", name:" Tim Cook ", imageName:"dog" )
    ]

   
    var body: some View {
        NavigationView{
        List{
            ForEach (data) { items in
                ForEach (0..<2) { item in CollectionView (data: items)
              }
            }
            
        }.listStyle(SidebarListStyle())
}
    }
struct CollectionView: View {
    let data: DataModel
    var body: some View {
        VStack {
            HStack {
                
                ForEach (0..<2) {
                    items in
                 Spacer ()
                    Image (self .data.imageName)
                    .resizable ()
                    .frame (width: 150, height: 150)
                    .foregroundColor (
                        .yellow ) .clipShape (Circle()).cornerRadius(30)
                    Spacer ()
                } .padding (.bottom, 16)
                
            }.background(Color.blue)
            HStack {
                Spacer ()
                Text ( self.data.name)
                Spacer ()
                Text ( self.data.name)
                Spacer ()
                 }
   }
}
}
}
