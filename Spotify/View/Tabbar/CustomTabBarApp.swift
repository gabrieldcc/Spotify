//
//  CustomTabBarApp.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 02/02/24.
//

import Foundation
import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundStyle(selectedTab == tab ? .white : .gray)
                        .font(.system(size: 22))
                        .foregroundStyle(.black.opacity(0.7))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
    }
}

enum Tab: String, CaseIterable {
    case house
    case magnifyingglass
    case book
    case wifi
}

//struct MainView: View {
//    var body: some View {
//        TabView {
//            ContentView()
//                .tabItem {
//                    Label("Menu", systemImage: "list.dash")
//                }
//
//            OrderView()
//                .tabItem {
//                    Label("Order", systemImage: "square.and.pencil")
//                }
//        }
//    }
//}

#Preview {
    ContentView()
}
