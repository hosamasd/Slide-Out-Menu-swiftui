//
//  ContentView.swift
//  Slide Out Menu
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

var data = ["Home","Dashboards","Shoes","Stacked Carousel","VPN","Second VPN"]//,"Pull To Refresh"]

struct ContentView: View {
    
    @State var index = "Home"
    @State var show = false
    
    var body: some View {
        
        ZStack{
            
            ZStack(alignment: .leading) {
                
                (self.show ? Color.black.opacity(0.05) : Color.clear).edgesIgnoringSafeArea(.all)
                
                
                VStack(alignment : .leading,spacing: 25){
                    
                    HStack(spacing: 15){
                        
                        Image("pic")
                            .resizable()
                            .frame(width: 65, height: 65)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Catherine")
                                .fontWeight(.bold)
                            
                            Text("New York , US")
                        }
                    }
                    .padding(.bottom, 50)
                    
                    ForEach(data,id: \.self){i in
                        
                        Button(action: {
                            
                            self.index = i
                            
                            withAnimation(.spring()){
                                
                                self.show.toggle()
                            }
                            
                        }) {
                            
                            HStack{
                                
                                Capsule()
                                    .fill(self.index == i ? Color.orange : Color.clear)
                                    .frame(width: 5, height: 30)
                                
                                Text(i)
                                    .padding(.leading)
                                    .foregroundColor(.black)
                                
                            }
                        }
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.leading)
                .padding(.top)
                .scaleEffect(self.show ? 1 : 0)
                
                ZStack(alignment: .topTrailing) {
                    
                    MainView(show: $show, index: $index)
                        .scaleEffect(self.show ? 0.8 : 1)
                        .offset(x: self.show ? 150 : 0,y : self.show ? 50 : 0)
                        .disabled(show ? true : false)
                    
                    Button(action: {
                        
                        withAnimation(.spring()){
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black)
                        
                    }
                    .padding()
                    .opacity(self.show ? 1 : 0)
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
