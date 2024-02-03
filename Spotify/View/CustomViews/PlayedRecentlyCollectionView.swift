//
//  PlayedRecentlyCollectionView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 03/02/24.
//

import Foundation
import SwiftUI

struct PlayedRecentlyCollectionView: View {
    let data: PlayedRecentlyDataModel
    
    var body: some View {
        HStack{
            VStack {
                
                Image(self.data.imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Label(self.data.name, systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 100)
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

