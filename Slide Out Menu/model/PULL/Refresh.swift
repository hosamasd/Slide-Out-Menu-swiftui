//
//  Refresh.swift
//  Pull To Refresh
//
//  Created by Hossam on 12/5/20.
//

import SwiftUI

struct Refresh {
    var startOffset : CGFloat = 0
    var offset : CGFloat = 0
    var started : Bool
    var released: Bool
    var invalid : Bool = false
}
