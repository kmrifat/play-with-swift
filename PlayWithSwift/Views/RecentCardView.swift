//
//  RecentCardView.swift
//  PlayWithSwift
//
//  Created by rifat on 18/11/23.
//

import SwiftUI

struct RecentCardView: View {
    var recentMsg: RecentMessage
    var body: some View {
        HStack{
            Image(recentMsg.userImage)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(spacing: 4){
                HStack{
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text(recentMsg.userName).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(recentMsg.lastMsg).font(.caption)
                    })
                    Spacer(minLength: 10)
                    VStack{
                        Text(recentMsg.lastMsgTime).font(.caption)
                        Text(recentMsg.pendingMsgs)
                            .font(.caption2)
                            .padding(5)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                }
                
            }
        }
    }
}

#Preview {
    Home()
}
