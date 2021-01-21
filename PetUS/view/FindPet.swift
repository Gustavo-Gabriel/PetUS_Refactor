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
    
    @State var x: [CGFloat] = [0,0,0,0,0]
    @State var degree: [Double] = [0,0,0,0,0]
    
    var body: some View {
        ZStack{
            
            Button(action: {
                
                for i in 0..<self.x.count {
                    self.x[i] = 0
                }
                
                for i in 0..<self.degree.count {
                    self.degree[i] = 0
                }
                
            }) {
                Image(systemName: "return")
                    .font(.title)
            }
            
            ZStack{
                
                VStack{
                    HStack{
                        HeaderView()
                        Spacer()
                    }
                    ZStack{
                        ForEach(0..<5, id: \.self)    { i in
                            CardPet()
                                .offset(x: self.x[i])
                                .rotationEffect(.init(degrees: self.degree[i]))
                                .gesture(DragGesture()
                                            .onChanged({(value) in
                                                
                                                if value.translation.width > 0 {
                                                    self.x[i] = value.translation.width
                                                    self.degree[i] = 8
                                                }else{
                                                    self.x[i] = value.translation.width
                                                    self.degree[i] = -8
                                                }
                                                
                                            })
                                            .onEnded({(value) in
                                                
                                                if value.translation.width > 0 {
                                                    
                                                    if value.translation.width > 100 {
                                                        self.x[i] = 500
                                                        self.degree[i] = 15
                                                    }else{
                                                        self.x[i] = 0
                                                        self.degree[i] = 0
                                                    }
                                                    
                                                }else{
                                                    if value.translation.width < -100 {
                                                        self.x[i] = -500
                                                        self.degree[i] = -15
                                                    }else{
                                                        self.x[i] = 0
                                                        self.degree[i] = 0
                                                    }
                                                }
                                                
                                            }))
                            
                        }
                    }
                    
                    
                    
                    
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
            }.animation(.default)
            
            
            
        }.background(Image( "petBg"))
        
    }
    
}

