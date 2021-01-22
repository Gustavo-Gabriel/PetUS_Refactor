//
//  CardPet.swift
//  PetUS
//
//  Created by Luane dos Santos on 20/01/21.
//  Edited by Luane dos Santos on 22/01/21.

import Foundation
import SwiftUI
import UIKit

struct CardPet: View {
    @State var Currentpage = 0
    
    let model: Pet
    
    var body: some View {
        ZStack{
            Color("cardColor")
            
            VStack{
                Image(model.picture)
                    .resizable()
                    .frame(width: 275, height: 329, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fill)
                    
                
                HStack{
                    Text(model.name)
                        .padding(.horizontal)
                        .font(.system(size: 18, weight: .heavy, design: .default))
                        .foregroundColor(Color("textColor"))
                    
                    Spacer()
                }.padding(.vertical, 0.3)
                
                Text(model.description)
                    .font(.system(size: 10, weight: .regular, design: .default))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .foregroundColor(Color("textColor"))
                
                Spacer()
            }
        }
        .frame(width: 275, height: 429, alignment: .center)
        .cornerRadius(30)
    }
}

struct pageControl : UIViewRepresentable {
    var current = 0
    
    func makeUIView(context: UIViewRepresentableContext<pageControl> ) -> UIViewType {
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = .black
        page.numberOfPages = 3
        page.pageIndicatorTintColor = .gray
        let pos = CGPoint(x: 0,y: 0)
        let size = CGSize(width: 50, height: 50)
        page.frame = CGRect(origin: pos, size: size)
        return page
    }
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageControl>) {
        uiView.currentPage = current
    }
}

