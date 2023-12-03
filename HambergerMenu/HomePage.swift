//
//  HomePage.swift
//  HambergerMenu
//
//  Created by mahesh gaykar on 29/07/23.
//

import SwiftUI

struct HomePage: View {
    
    @Binding var x : CGFloat
    
    var body: some View {
        
        VStack(spacing: 0.0) {
            ZStack(alignment: .top) {
                HStack(spacing: 0.0) {
                    Button {
                        print("Menu is Pressed")
                        withAnimation {
                            x = 0
                        }
                    } label: {
                        Image(systemName: "list.triangle")
                            .resizable()
                            .foregroundColor(Color.black)
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                    Text("Home")
                        .font(Font.title3)
                        .foregroundColor(Color.black)
                        .padding(.leading, UIScreen.main.bounds.width/2 - 65)
                    Spacer(minLength: 10.0)
                }
                .frame(height: 40)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                .padding(.top, Utilities.shared.checkForTopNotch() ? 50 : 15)
                .background(Color.red.opacity(0.75))
                .shadow(color: Color.black.opacity(0.1), radius: 5,x: 0, y: 5)
                .clipShape(CustomCornerShape(cornerRadius: 10.0, corners: [.bottomRight , .bottomLeft]))
            }
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(" Home Town Area. ")
                    .font(Font.title3)
                    .foregroundColor(Color.black)
                    .frame(width: 150, height: 45, alignment:  .center)
                    .background(Color.blue)
                    .clipShape(CustomCornerShape(cornerRadius: 5.0, corners: [.allCorners]))
                    .padding(.top, 30)
                    
                ZStack(alignment: .topLeading) {
                    
                    Text(" Home ")
                        .font(Font.title3)
                        .foregroundColor(Color.black)
                        .frame(width: 150, height: 45)
                        .background(Color.blue)
                        .clipShape(CustomCornerShape(cornerRadius: 5.0, corners: [.allCorners]))
                        .padding(.top, 30)
                        
                    Text(" Town ")
                        .font(Font.title3)
                        .foregroundColor(Color.black)
                        .frame(width: 150, height: 45)
                        .background(Color.red)
                        .clipShape(CustomCornerShape(cornerRadius: 5.0, corners: [.allCorners]))
                        .padding(.top, 70)
                        .padding(.leading, 50)
                }
            }
            .frame(width: UIScreen.main.bounds.width)
          //  .background(Color.green.opacity(0.75))
            
            
            Spacer()
        }
        .contentShape(Rectangle())
        .background(Color.white)
        .ignoresSafeArea(.all)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(x: .constant(0))
    }
}
