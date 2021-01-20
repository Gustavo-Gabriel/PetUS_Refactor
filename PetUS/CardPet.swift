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

