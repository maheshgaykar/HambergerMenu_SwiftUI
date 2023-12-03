//
//  ContentView.swift
//  HambergerMenu
//
//  Created by mahesh gaykar on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct CustomCornerShape: Shape {
    
    var cornerRadius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
