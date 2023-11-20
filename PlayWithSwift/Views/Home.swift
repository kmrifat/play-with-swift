//
//  Home.swift
//  PlayWithSwift
//
//  Created by rifat on 17/11/23.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        HStack(spacing: 0) {
            VStack{
                TabButton(image: "house", title: "Home", selectedTab: $homeData.selectedTab)
                TabButton(image: "person", title: "Profile", selectedTab: $homeData.selectedTab)
                TabButton(image: "message", title: "Chat", selectedTab: $homeData.selectedTab)
                Spacer()
                TabButton(image: "gear", title: "Setting", selectedTab: $homeData.selectedTab)
            }.padding()
                .padding(.top, 35)
                .background(BlurView())
            ZStack{
                switch homeData.selectedTab{
                case "Home": Text("Home")
                case "Profile": Text("Profile")
                case "Chat":ChatView()
                case "Setting": Text("Setting")
                default: Text("Default")
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
        }
        .ignoresSafeArea(.all, edges: .all)
        .environmentObject(homeData)
    }
}

#Preview {
    Home()
}
