//
//  CustomCorners.swift
//  Dashboard Desgin
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

// Custom Corners...

struct CustomCorners : Shape {
    
    var corners : UIRectCorner
    var size : CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: size, height: size))
        
        return Path(path.cgPath)
    }
}
