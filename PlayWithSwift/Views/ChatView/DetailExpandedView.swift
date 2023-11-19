//
//  DetailExpandedView.swift
//  PlayWithSwift
//
//  Created by rifat on 19/11/23.
//

import SwiftUI

struct DetailExpandedView: View {
    @EnvironmentObject var homeData: HomeViewModel
    var user: RecentMessage
    var body: some View {
        VStack(spacing: 25){
            Image(user.userImage)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 90, height: 90)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.top, 35)
            
            VStack{
                Text(user.userName)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("+8801738070062").font(.title3)
            }
            
            HStack{
                
                Button(action: {}, label: {
                    VStack{
                        Image(systemName: "bell.slash").font(.title2)
                        Text("Mute")
                    }
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {}, label: {
                    VStack{
                        Image(systemName: "hand.raised.fill").font(.title2)
                        Text("Home")
                    }
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {}, label: {
                    VStack{
                        Image(systemName: "exclamationmark.triangle").font(.title2)
                        Text("Report")
                    }
                }).buttonStyle(PlainButtonStyle())
            }
            
            Picker(selection: $homeData.pickedTab, label: Text("Picker"), content: {
                Text("Media").tag("Media")
                Text("Links").tag("Links")
                Text("Audio").tag("Audio")
                Text("Files").tag("Files")
            })
            .labelsHidden()
            .padding(.vertical)
            .pickerStyle(SegmentedPickerStyle())
            ScrollView{
                if homeData.pickedTab == "Media"{
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 3), spacing: 10, content: {
                        ForEach(1...8,id: \.self){index in
                            Image("person_\(index)")
                                .resizable()
                                .aspectRatio(contentMode:.fill)
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        }
                    })
                }else {
                    Text("No \(homeData.pickedTab) found")
                }
                
            }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: 300)
    }
}

#Preview {
    DetailExpandedView(user: RecentMessage(lastMsg: "last msg", lastMsgTime: "10.00am", pendingMsgs: "2", userName: "Rifat", userImage: "person_1", allMsgs: Eachmsg.shuffled())).environmentObject(HomeViewModel())
}
