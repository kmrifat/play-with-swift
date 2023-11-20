//
//  MessageView.swift
//  PlayWithSwift
//
//  Created by rifat on 21/11/23.
//

import SwiftUI

struct MessageView: View {
    @EnvironmentObject var homeData: HomeViewModel
    var user: RecentMessage
    var body: some View {
        ScrollView{
            ForEach(user.allMsgs){message in
                HStack(spacing: 10){
                    if message.myMessage{
                        Spacer()
                        Text(message.message)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    else {
                        Image(user.userImage).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 30, height: 30)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Text(message.message)
                            .foregroundColor(.primary)
                            .padding(10)
                            .background(Color.primary.opacity(0.2))
                            .cornerRadius(10)
                        Spacer()
                    }
                }.padding(.horizontal)
            }
        }.defaultScrollAnchor(.bottom)
    }
}

#Preview {
    MessageView(user: RecentMessage(lastMsg: "Hello", lastMsgTime: "10.12", pendingMsgs: "2", userName: "Rifat", userImage: "person_1", allMsgs: Eachmsg.shuffled())).environmentObject(HomeViewModel())
}
