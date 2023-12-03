//
//  Home.swift
//  HambergerMenu
//
//  Created by mahesh gaykar on 29/07/23.
//

import SwiftUI

struct Home: View {
    //for Fiture Scope
    @State var width =  UIScreen.main.bounds.width - 90
    // To hide a view
    @State var x =  -UIScreen.main.bounds.width + 90
    
    var body: some View {
        
        ZStack (alignment: Alignment(horizontal: .leading, vertical: .center)){
            
            HomePage(x: $x)
            
            SlideMenu()
                .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5 ,x: 5, y: 0)
                .offset(x: x)
                .background(Color.black.opacity(x == 0 ? 0.5 : 0.0).ignoresSafeArea(.all, edges: .vertical).onTapGesture {
                    withAnimation {
                        x = -width
                    }
                })
        }
        .gesture(DragGesture()
            .onChanged({ (valueChange) in
                withAnimation {
                    if valueChange.translation.width > 0 {
                        
                        if x < 0 {
                            x = -width + valueChange.translation.width
                        }
                    }else {
                        x = valueChange.translation.width
                    }
                }
            }).onEnded({ (valueEnd) in
                withAnimation {
                    if -x < width/2 {
                        x = 0
                    }else {
                        x = -width
                    }
                }
            }))
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
