//
//  Home.swift
//  Slide Out Menu
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
       
        ScrollView {
            
            VStack{
                
                ForEach(1...6,id: \.self) {i in
                    
                    Image("p\(i)")
                        .resizable()
                        .frame(height:250)
                        .cornerRadius(20)
                    
                }
                .padding(.top,8)
                .padding(.horizontal)
            }
            
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
