//
//  CardView.swift
//  Stacked Carousel Slider
//
//  Created by hosam on 20/12/2020.
//

import SwiftUI

struct CardView: View {
    var card : Book
    
    var body: some View{
    
        VStack{
            
            // You can display all details
            // I'm displaying only read button....
            Spacer(minLength: 0)
            
            HStack{
                
                Button(action: {}) {
                    
                    Text("Read Now")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical,5)
                        .padding(.horizontal,10)
                        .background(Color("purple"))
                        .clipShape(Capsule())
                }
                
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.bottom,10)
        }
        
    }
}
