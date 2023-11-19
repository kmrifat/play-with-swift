//
//  ChatView.swift
//  PlayWithSwift
//
//  Created by rifat on 17/11/23.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var homeData: HomeViewModel
    
    var body: some View {
        
        List(selection: $homeData.selectedrecentMsg) {
            ForEach(homeData.msgs.filter {
                homeData.search.isEmpty ||
                    $0.userName.localizedCaseInsensitiveContains(homeData.search)
            }) { message in
                NavigationLink(destination: Text("Destination"), label: {
                    RecentCardView(recentMsg: message)
                })
            }
        }
        .listStyle(SidebarListStyle())
        .searchable(text: $homeData.search, placement: .sidebar, prompt: "Search People")
    }
    
    
}

#Preview {
    Home()
}
