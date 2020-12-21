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
                Orders()
                    .opacity(index == "Orders" ? 1 : 0)
                Wishlist()
                    .opacity(index == "Wishlist" ? 1 : 0)
                SavedCards()
                    .opacity(index == "Saved Cards" ? 1 : 0)
                Settings()
                    .opacity(index == "Settings" ? 1 : 0)
                Help()
                    .opacity(index == "Help" ? 1 : 0)
            }
            
        }
        .background(Color.white)
        .cornerRadius(15)
        
    }
}

