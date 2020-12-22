//
//  SalesView.swift
//  Dashboard Desgin
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct SalesView: View {
    var sale : Sales
    
    var body: some View{
        
        ZStack{
            
            HStack{
                
                VStack(alignment: .leading, spacing: 22) {
                    
                    Text(sale.title)
                        .foregroundColor(.white)
                    
                    Text(sale.value)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                Spacer(minLength: 0)
            }
            .padding()
        }
        .background(sale.color)
        .cornerRadius(10)
    }
}
