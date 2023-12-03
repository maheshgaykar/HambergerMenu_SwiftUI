//
//  SlideMenu.swift
//  HambergerMenu
//
//  Created by mahesh gaykar on 29/07/23.
//

import SwiftUI

struct SlideMenu: View {
    
    let menuButtons = ["person","pencil","steeringwheel","mappin","cloud"]
    let edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        
        HStack(){
            
            VStack(alignment: .leading) {
                
                Image("personMrs")
                    .resizable()
                    .frame(width: 60.0, height: 60.0)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    .mask(Circle())
                    .shadow(radius: 5)
                
                HStack(alignment: .top, spacing: 12) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Alexa")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("@_Alexa")
                            .font(.body)
                            .foregroundColor(.gray)
                        
                        HStack(spacing: 10.0) {
                            FollowView(name: "Follower", count: 10)
                            FollowView(name: "Following", count: 20)
                        }
                        .padding(.top, 20)
                    }
                    Spacer(minLength: 0)
                    
                    Button() {
                        
                    } label: {
                        Image(systemName: "arrow.down.square")
                            .resizable()
                            .foregroundColor(Color.black)
                            .frame(width: 18, height: 18)
                    }
                }
                .padding(.bottom, 20)
                
                VStack(spacing: 10) {
                    ForEach(self.menuButtons, id: \.self){ name in
                        MenuButton(name: name)
                    }
                }
                .padding(.leading, -20)
                Spacer()
            }
            // since vertical edges are ignored...
            .padding(.horizontal, 20)
            .padding(.top, edges?.top == 0 ? 15 : edges?.top)
            .padding(.bottom, edges?.bottom == 0 ? 15 : edges?.bottom)
            // default width...
            .frame(width: UIScreen.main.bounds.width - 90.0)
            .background(Color.white)
            .ignoresSafeArea(.all, edges: .vertical)
            
            Spacer()
        }
    }
}

struct FollowView: View {
    
    var name: String
    var count: Int
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 07.0) {
            Text("\(self.count)")
                .fontWeight(.bold)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text(self.name)
                .font(.subheadline)
                .foregroundColor(Color.black)
        }
    }
}

struct MenuButton: View {
    
    var name: String
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: self.name)
                .resizable()
                .frame(width: 15, height: 15)
                .padding(.leading, 15)
            Text(self.name)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.leading, 10)
            Spacer()
        }
        .frame(height: 40)
        .background(Color.red.opacity(0.5))
        .clipShape(CustomCornerShape(cornerRadius: 20.0, corners: [.bottomRight , .topRight]))
    }
}


struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
