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
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundStyle(selectedTab == tab ? .red : .gray)
                        .font(.system(size: 22))
                    Spacer()
                }
            }
        }.frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        Text("Hello world")
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
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
