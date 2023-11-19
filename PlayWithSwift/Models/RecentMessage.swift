//
//  RecentMessage.swift
//  PlayWithSwift
//
//  Created by rifat on 18/11/23.
//

import SwiftUI

struct RecentMessage: Identifiable {
    var id = UUID().uuidString
    var lastMsg: String
    var lastMsgTime: String
    var pendingMsgs: String
    var userName: String
    var userImage: String
    var allMsgs: [Message]
}

var recentMsg: [RecentMessage] = [
    RecentMessage(lastMsg: "Apple Tech", lastMsgTime: "15:00", pendingMsgs: "9", 
                  userName: "rifat", userImage: "person_1", allMsgs: Eachmsg.shuffled()),
    
    RecentMessage(lastMsg: "Hey there!", lastMsgTime: "14:45", pendingMsgs: "3",
                  userName: "John", userImage: "person_2", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "How's it going?", lastMsgTime: "13:30", pendingMsgs: "1",
                  userName: "Emma", userImage: "person_3", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "Meeting at 2 PM", lastMsgTime: "12:15", pendingMsgs: "0",
                  userName: "Alex", userImage: "person_4", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "Ready for the weekend?", lastMsgTime: "11:00", pendingMsgs: "7",
                  userName: "Sophie", userImage: "person_5", allMsgs: Eachmsg.shuffled()),
    
    RecentMessage(lastMsg: "Heading out for lunch, want to join?", lastMsgTime: "12:30", pendingMsgs: "2",
                  userName: "David", userImage: "person_6", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "Finished the project! Celebrate tonight?", lastMsgTime: "18:15", pendingMsgs: "5",
                  userName: "Lily", userImage: "person_7", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "Movie night tomorrow, what's your pick?", lastMsgTime: "21:45", pendingMsgs: "1",
                  userName: "Ryan", userImage: "person_8", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "Reminder: Team meeting at 10 AM", lastMsgTime: "08:45", pendingMsgs: "0",
                  userName: "Emily", userImage: "person_9", allMsgs: Eachmsg.shuffled()),

    RecentMessage(lastMsg: "Guess what? I got the job!", lastMsgTime: "16:20", pendingMsgs: "3",
                  userName: "Daniel", userImage: "person_10", allMsgs: Eachmsg.shuffled()),


]
