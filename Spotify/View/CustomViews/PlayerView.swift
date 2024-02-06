//
//  PlayerView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 04/02/24.
//

import Foundation
import SwiftUI

struct PlayerView: View {
    
    let data: PlayerDataModel
    var imageSize: CGFloat = 40
    @State private var offset: CGFloat = 0
    
    var body: some View {
        HStack(spacing: 8) {
            Image(self.data.image)
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .padding(.leading, 8)
            
            Spacer()
            
            AutoScrollingTextView(text: self.data.chapter)
            
            Image(self.data.device)
                .resizable()
                .frame(width: imageSize, height: imageSize)
            
            Spacer()
            Image(systemName: self.data.playerStatus)
                .resizable()
                .frame(width: 16, height: 16)
                .foregroundColor(.white)
                .padding(.trailing, 8)
            
        }.frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(.black).cornerRadius(10)
        
    }
    
    func calculateLabelWidth(text: String) -> CGFloat {
        let boundingBox = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font : UIFont.systemFont(ofSize: 16)], context: nil)
        return boundingBox.width
    }
}

#Preview {
    ContentView()
    //PlayerView(data: PlayerDataSource.data.first!)
}
