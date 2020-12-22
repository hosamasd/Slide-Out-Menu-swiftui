//
//  PageController.swift
//  Stacked Carousel Slider
//
//  Created by hosam on 20/12/2020.
//

import SwiftUI

// Paging COntrol...

struct PageViewController : UIViewRepresentable {
    
    var total : Int
    @Binding var current : Int
    
    func makeUIView(context: Context) -> UIPageControl {
        
        let view = UIPageControl()
        view.numberOfPages = total
        view.currentPage = current
        view.currentPageIndicatorTintColor = .white
        view.preferredIndicatorImage = UIImage(systemName: "book.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 22))
        view.backgroundStyle = .prominent
        
        return view
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        
        uiView.currentPage = current
    }
}
