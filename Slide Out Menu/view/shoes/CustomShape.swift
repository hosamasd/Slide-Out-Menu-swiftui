//
//  CustomShape.swift
//  Shoes Market
//
//  Created by hosam on 20/12/2020.
//

import SwiftUI

struct CustomShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft], cornerRadii: CGSize(width: 85, height: 85))
        
        return Path(path.cgPath)
    }
}
