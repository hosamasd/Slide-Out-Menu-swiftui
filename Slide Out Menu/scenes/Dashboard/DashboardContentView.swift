//
//  DashboardContentView.swift
//  Slide Out Menu
//
//  Created by hosam on 12/21/20.
//

import SwiftUI

struct DashboardContentView: View {
    var body: some View {
            
            DashboardHome()
                .navigationTitle("")
                .navigationBarHidden(true)
            
    }
}

struct DashboardContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardContentView()
    }
}
