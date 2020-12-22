//
//  Book.swift
//  Stacked Carousel Slider
//
//  Created by hosam on 20/12/2020.
//

import SwiftUI

// Carousel Model Book Data...

struct Book : Identifiable {
    
    var id: Int
    var image : String
    var title : String
    var author : String
    var rating : Int
    var offset : CGFloat
}

