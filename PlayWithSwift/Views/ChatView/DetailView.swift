//
//  DetailView.swift
//  PlayWithSwift
//
//  Created by rifat on 19/11/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var homeData: HomeViewModel
    var user: RecentMessage
    
    var body: some View {
        HStack {
            VStack(spacing: 0){
                HStack{
                    HStack{
                        Image(user.userImage)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 40, height: 40)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Text(user.userName).font(.title2)
                    }
                    
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass").font(.title2)
                    }).buttonStyle(PlainButtonStyle())
                    Button(action: {withAnimation{homeData.isExpanded.toggle()}}, label: {
                        Image(systemName: "sidebar.right").font(.title2)
                    }).buttonStyle(PlainButtonStyle())
                        .foregroundColor(homeData.isExpanded ? .blue : .primary)
                }.padding()
                
                Spacer()
                
                HStack(spacing: 15){
                    Button(action: {}, label: {
                        Image(systemName: "paperplane").font(.title2)
                    }
                    )
                    .buttonStyle(PlainButtonStyle())
                    
                    TextField("Enter Message", text: .constant(""))
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.vertical, 0)
                        .padding(.horizontal, 8)
                        .clipShape(Capsule())
                        .background(Capsule().strokeBorder(Color.gray))
                        .font(.title2)
                    
                    Button(action: {}, label: {
                        Image(systemName: "face.smiling")
                            .font(.title2)
                    }).buttonStyle(PlainButtonStyle())
                    
                    Button(action: {}, label: {
                        Image(systemName: "mic").font(.title2)
                    }).buttonStyle(PlainButtonStyle())
                }.padding([.horizontal, .bottom])
            }
            DetailExpandedView(user: user).background(BlurView())
                .frame(width: homeData.isExpanded ? nil : 0)
                .opacity(homeData.isExpanded ? 1 : 0).padding(0)
            
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    DetailView(user: RecentMessage(lastMsg: "last msg", lastMsgTime: "10.00am", pendingMsgs: "2", userName: "Rifat", userImage: "profile_1", allMsgs: Eachmsg.shuffled())).environmentObject(HomeViewModel())
}
