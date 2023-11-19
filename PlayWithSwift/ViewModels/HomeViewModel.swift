//
//  HomeViewModel.swift
//  PlayWithSwift
//
//  Created by rifat on 17/11/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedTab = "Chat"
    
    @Published var msgs: [RecentMessage] = recentMsg
    
    @Published var selectedrecentMsg: String? = recentMsg.first?.id
    
    @Published var search: String = ""
}
