//
//  PULLHome.swift
//  Slide Out Menu
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct PULLHome: View {
    // sample Data....
    
    @State var arrayData = ["Hello Data 1","Hello Data 2","Hello Data 3","Hello Data 4","Hello Data 5"]
   
    
    var body: some View{
        
        VStack(spacing: 0){
            
//            HStack{
//                
//                Text("Hosam")
//                    .font(.largeTitle)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.purple)
//                
//                Spacer()
//            }
//            .padding()
//            .background(Color.white.ignoresSafeArea(.all, edges: .top))
            
            Divider()
            
            KRefreshScrollView(progressTint: .purple, arrowTint: .purple) {
                
                VStack{
                    
                    ForEach(arrayData,id: \.self){value in
                        
                        HStack{
                            
                            Text(value)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                }
                .background(Color.white)
                .padding()
                
            } onUpdate: {
                
                arrayData.append("New Data")
            }

        }
        .background(Color.black.opacity(0.06).ignoresSafeArea())
    }
    
   
    
}

