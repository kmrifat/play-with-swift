//
//  TabButton.swift
//  PlayWithSwift
//
//  Created by rifat on 17/11/23.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {withAnimation {selectedTab = title }}, label: {
            VStack(spacing: 7){
                Image(systemName:  image)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(selectedTab == title ? .white : .gray)
                Text(title).fontWeight(.semibold)
                    .font(.system(size: 11))
                    .foregroundColor(selectedTab == title ? .white : .gray)
            }
            .padding(.vertical, 8)
            .frame(width: 70)
            .contentShape(Rectangle())
            .background(Color.primary.opacity(selectedTab == title ? 0.15 : 0))
            .cornerRadius(10)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    TabButton(image: "house", title: "home", selectedTab: .constant("home"))
}
