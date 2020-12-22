//
//  GraphView.swift
//  Dashboard Desgin
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct GraphView: View {
    
    var data : DailySales
    var allData : [DailySales]
    
    var body: some View{
        
        VStack(spacing: 5){
            
            GeometryReader{reader in
                
                VStack(spacing: 0){
                    
                    Spacer(minLength: 0)
                    
                    Text("\(Int(data.value))")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        // default Height For Graph...
                        .frame(height: 20)
                        .opacity(data.show ? 1 : 0)
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.red.opacity(data.show ? 1 : 0.4))
                        .frame(height: calulateHeight(value: data.value, height: reader.frame(in: .global).height - 20))
                }
            }
            
            Text(customDateStyle(date: data.day))
                .font(.caption2)
                .foregroundColor(.gray)
        }
    }
    
    func customDateStyle(date: Date)->String{
        
        let format = DateFormatter()
        format.dateFormat = "MMM dd"
        return format.string(from: date)
    }
    
    func calulateHeight(value: CGFloat,height: CGFloat)->CGFloat{
        
        let max = allData.max { (max, sale) -> Bool in
            
            if max.value > sale.value{return false}
            else{return true}
        }
        
        let percent = value / max!.value
        
        return percent * height
    }
}
