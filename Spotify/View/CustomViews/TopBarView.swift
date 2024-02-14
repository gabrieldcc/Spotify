//
//  TopBarView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 09/02/24.
//

import Foundation
import SwiftUI

struct TopBarView: View {
    
    var body: some View {
        HStack(spacing: 8) {
            
            Circle()
                .foregroundColor(.purple)
                .overlay(Text("1")).foregroundColor(.black)
            
            Rectangle()
                .fill(.blue)
                .cornerRadius(20)
                .frame(width: 80)
                .overlay(Text("Tudo")).foregroundColor(.black)
            
            Rectangle()
                .fill(.gray)
                .cornerRadius(20)
                .frame(width: 80)
                .overlay(Text("Música")).foregroundColor(.white)
            
            Rectangle()
                .fill(.gray)
                .cornerRadius(20)
                .frame(width: 100)
                .overlay(Text("Podcasts")).foregroundColor(.white)
                
            Spacer()

        }.frame(height: 36)
            .background(.black)
    }
}

#Preview {
    ContentView()
}
