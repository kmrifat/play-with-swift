//
//  BlurView.swift
//  PlayWithSwift
//
//  Created by rifat on 17/11/23.
//

import SwiftUI

struct BlurView: NSViewRepresentable {
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        
        return view
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {

    }
}

//#Preview {
//    BlurView()
//}
