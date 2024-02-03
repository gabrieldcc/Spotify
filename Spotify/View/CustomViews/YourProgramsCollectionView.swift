//
//  YourProgramsCollectionView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 03/02/24.
//

import Foundation
import SwiftUI

struct YourProgramsCollectionView: View {
    let data: YourProgramsDataModel
    
    var body: some View {
        HStack{
            VStack {
                
                Image(self.data.imageName)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Label(self.data.genrer, systemImage: "")
                    .foregroundStyle(.green)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Label(self.data.name, systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Label(self.data.subtitle, systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2)
                    .frame(width: 150)
            }
        }
    }
}
