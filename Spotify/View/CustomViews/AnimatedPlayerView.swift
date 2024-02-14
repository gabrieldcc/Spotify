//
//  AnimatedPlayerView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 09/02/24.
//

import Foundation
import SwiftUI

struct AnimatedPlayerView: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("nerdcast")
                .resizable()
                .frame(width: 100, height: 100)
            
            Label("teste teste teste teste", systemImage: "")
            //.frame(minWidth: .infinity)
            
            Spacer()
        }.background(.blue)
    }
}

#Preview {
    ContentView()
}
