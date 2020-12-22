//
//  BlurView.swift
//  VPN
//
//  Created by hosam on 20/12/2020.
//

import SwiftUI

struct BlurView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVisualEffectView {
     
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialLight))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
