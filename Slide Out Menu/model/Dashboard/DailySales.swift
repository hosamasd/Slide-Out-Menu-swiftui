//
//  DailySales.swift
//  Dashboard Desgin
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

// Daily Sold Model And Data....

struct DailySales : Identifiable {
    var id = UUID().uuidString
    var day : Date
    var value : CGFloat
    var show : Bool
}
