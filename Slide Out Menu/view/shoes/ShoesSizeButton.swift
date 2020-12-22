//
//  SizeButton.swift
//  Shoes Market
//
//  Created by hosam on 20/12/2020.
//

import SwiftUI

struct ShoesSizeButton: View {
    
    @Binding var size : Int
    var title : Int
    var black = Color.black.opacity(0.7)
    
    var body: some View{
        
        Button(action: {size = title}) {
            
            Text("\(title)")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(size == title ? .white : black)
                .frame(width: 35,height: 35)
                .background(size == title ? Color("red") : Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
        }
    }
}
