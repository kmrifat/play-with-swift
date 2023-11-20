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
        NavigationSplitView{
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search", text: $homeData.search).padding(.horizontal, 0)
            }
            .padding(20)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray, lineWidth: 1)
                    .padding()
            ).background(BlurView())
            
            List(selection: $homeData.selectedrecentMsg){
                ForEach(homeData.msgs.filter{
                    homeData.search.isEmpty || $0.userName.localizedCaseInsensitiveContains(homeData.search)
                }){message in
                    NavigationLink(destination: DetailView(user: message), label: {
                        RecentCardView(recentMsg: message)
                    })
                }
            }
        } detail: {
            
        }
        
    }
    
    
}

#Preview {
    ChatView().environmentObject(HomeViewModel())
}
