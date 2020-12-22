//
//  Server.swift
//  VPN (iOS)
//
//  Created by Balaji on 22/12/20.
//

// Server Model And Model Data....

import SwiftUI

struct SecondServer: Identifiable {

    var id = UUID().uuidString
    var name: String
    var flag: String
    
}

func getSize(index: Int)->CGFloat{
    
    // Differnt Size Based On Index....
    
    if index < 10 || index > 50{
        return 3
    }
    if index >= 10 && index < 20{
        return 4
    }
    if index >= 40 && index <= 50{
        return 4
    }
    else{
        return 5
    }
}

var servers = [
    
    SecondServer(name: "United States", flag: "us"),
    SecondServer(name: "India", flag: "in"),
    SecondServer(name: "United Kingdom", flag: "uk"),
    SecondServer(name: "France", flag: "fr"),
    SecondServer(name: "Germany", flag: "ge"),
    SecondServer(name: "Singapore", flag: "si"),
]

