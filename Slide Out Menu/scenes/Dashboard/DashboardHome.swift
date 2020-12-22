//
//  DashboardHome.swift
//  Slide Out Menu
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct DashboardHome: View {
   
    @State var tab = "USA"
    @Namespace var animation
    @State var subTab = "Today"
    
    @StateObject var vm = DailySalesViewModel()
    
   
    
    @State var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
       
        VStack{
            
           Spacer()
            
            HStack {
                
                TabButton(selected: $tab, title: "USA", animation: animation)
                
                TabButton(selected: $tab, title: "Global", animation: animation)
                
            }
            .background(Color.white.opacity(0.08))
            .clipShape(Capsule())
            .padding(.horizontal)
            
            HStack(spacing: 20){
                
                ForEach(vm.subTabs,id: \.self){tab in
                    
                    Button(action: {subTab = tab}) {
                        
                        Text(tab)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white.opacity(subTab == tab ? 1 : 0.4))
                    }
                }
            }
            .padding()
            
            // Or YOu can use Foreach Also...
            VStack(spacing: 20){
                
                HStack(spacing: 15){
                    
                    SalesView(sale: vm.salesData[0])
                    
                    SalesView(sale: vm.salesData[1])
                }
                
                HStack(spacing: 15){
                    
                    SalesView(sale: vm.salesData[2])
                    
                    SalesView(sale: vm.salesData[3])
                    
                    SalesView(sale: vm.salesData[4])
                }
            }
            .padding(.horizontal)
            
           
            
            ZStack{
            
            Color.white
                .clipShape(CustomCorners(corners: [.topLeft,.topRight], size: 45))
                .ignoresSafeArea(.all, edges: .bottom)
            
                VStack{
                    
                    HStack{
                        
                        Text("Daily Sold Units")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Spacer(minLength: 0)
                    }
                    .padding()
                    .padding(.top,10)
                    
                    HStack(spacing: 10){
                        
                        ForEach(vm.dailySaled.indices,id: \.self){i in
                            
                            // For Toggling Show Button....
                            
                            GraphView(data: vm.dailySaled[i], allData: vm.dailySaled)
                                .onTapGesture {
                                    
                                    withAnimation{
                                        
                                        // toggling all other...
                                        
                                        for index in 0..<vm.dailySaled.count{
                                            
                                            vm.dailySaled[index].show = false
                                        }
                                        
                                        vm.dailySaled[i].show.toggle()
                                    }
                                }
                            
                            // sample Sapcing For Spacing Effect..
                            
                            if vm.dailySaled[i].value != vm.dailySaled.last!.value{
                                
                                Spacer(minLength: 0)
                            }
                        }
                    }
                    .padding(.horizontal,30)
                    .padding(.bottom,edges!.bottom == 0 ? 15 : 0)
                }
            }
            .padding(.top,20)
            
        }
//        .preferredColorScheme(.dark)
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))

    }
    
}

struct DashboardHome_Previews: PreviewProvider {
    static var previews: some View {
        DashboardHome()
    }
}
