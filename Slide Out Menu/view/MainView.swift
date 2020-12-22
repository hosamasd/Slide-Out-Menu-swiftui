//
//  MainView.swift
//  Slide Out Menu
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct MainView: View {
    
    @Binding var show : Bool
    @Binding var index : String
    
    var body: some View {
       
        VStack(spacing:0) {
            
            ZStack {
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()){
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        Image("Menu")
                        .resizable()
                        .frame(width: 20, height: 15)
                        .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("menudot")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.black)
                    }
                }
                
                Text(index)
                    .fontWeight(.bold)
                    .font(.title)
                    
                
                
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            ZStack {
                
                Home()
                    .opacity(index == "Home" ? 1 : 0)
                DashboardContentView()
//                Orders()
                    .opacity(index == "Dashboards" ? 1 : 0)
//                Wishlist()
                ShoesContentView()
                    .opacity(index == "Shoes" ? 1 : 0)
//                SavedCards()
                StackedContentView()
                    .opacity(index == "Stacked Carousel" ? 1 : 0)
//                Settings()
                VPNContentView()
                    .opacity(index == "VPN" ? 1 : 0)
//                Help()
                
                
               
                VecpndPNContentView()
                    .opacity(index ==  "Second VPN" ? 1 : 0)
//                PULLContentView()
//                    .opacity(index == "Pull To Refresh" ? 1 : 0)
            }
            
        }
        .background(Color.white)
        .cornerRadius(15)
        
    }
}

