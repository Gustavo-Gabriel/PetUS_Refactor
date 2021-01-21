//
//  CardPet.swift
//  PetUS
//
//  Created by Luane dos Santos on 20/01/21.
//

import Foundation
import SwiftUI
import UIKit

struct CardPet: View {
    @State var Currentpage = 0
    var body: some View {
        ZStack{
            Color(.white)
            
            VStack{
                Image("dog")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 275, height: 329, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                HStack{
                    Text("Yeontan")
                        .padding(.horizontal)
                        .font(.system(size: 18, weight: .heavy, design: .default))
                        .foregroundColor(.black)
                    
                    Spacer()
                }.padding(.vertical, 0.3)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")
                    .font(.system(size: 10, weight: .regular, design: .default))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .foregroundColor(.black)
                
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

