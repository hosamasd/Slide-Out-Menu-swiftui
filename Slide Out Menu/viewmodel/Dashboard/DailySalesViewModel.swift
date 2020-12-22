//
//  DailySalesViewModel.swift
//  Dashboard Desgin
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

class DailySalesViewModel: ObservableObject {

    @Published  var salesData = [

        Sales(title: "Sold", value: "18,789", color: Color.orange),
        Sales(title: "Returned", value: "1,089", color: Color.red),
        Sales(title: "Delivered", value: "8,500", color: Color.blue),
        Sales(title: "Transit", value: "2,000", color: Color.pink),
        Sales(title: "Cancelled", value: "1,700", color: Color.purple),
    ]
    
    @Published var dailySaled = [
        
        // Last 7 Days....
            DailySales(day: Calendar.current.date(byAdding: .day, value: -6, to: Date())!, value: 200, show: true),
            DailySales(day: Calendar.current.date(byAdding: .day, value: -5, to: Date())!, value: 710, show: false),
            DailySales(day: Calendar.current.date(byAdding: .day, value: -4, to: Date())!, value: 330, show: false),
            DailySales(day: Calendar.current.date(byAdding: .day, value: -3, to: Date())!, value: 519, show: false),
            DailySales(day: Calendar.current.date(byAdding: .day, value: -2, to: Date())!, value: 150, show: false),
            DailySales(day: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, value: 229, show: false),
            DailySales(day: Date(), value: 669, show: false)
    ]
    
    @Published var subTabs = ["Today","Yesterday","Last Week"]

    
}
