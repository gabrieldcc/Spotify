//
//  HeaderCollectionView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 03/02/24.
//

import Foundation
import SwiftUI

struct HeaderCollectionView: View {
    let data: HeaderDataModel
    
    var body: some View {
        HStack {
            HStack {
                
                Spacer()
                
                Image(self.data.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
                    .shadow(radius: 10)
                
                Spacer()
                
                Label(self.data.name, systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .padding(.bottom, 16)
        }
    }
}
