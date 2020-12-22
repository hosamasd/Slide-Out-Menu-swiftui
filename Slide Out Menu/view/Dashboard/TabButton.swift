//
//  TabButton.swift
//  Dashboard Desgin
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct TabButton : View {
    
    @Binding var selected : String
    var title : String
    var animation : Namespace.ID
    
    var body: some View{
        
        Button(action: {
            
            withAnimation(.spring()){
                
                selected = title
            }
            
        }) {
            
            ZStack{
                
                // Capsule And Sliding Effect...
                
                Capsule()
                    .fill(Color.clear)
                    .frame(height: 45)
                
                if selected == title{
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(height: 45)
                    // Mathced Geometry Effect...
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
                
                Text(title)
                    .foregroundColor(selected == title ? .black : .white)
                    .fontWeight(.bold)
            }
        }
    }
}
