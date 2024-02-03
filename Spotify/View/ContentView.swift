//
//  ContentView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 30/01/24.
//

import SwiftUI

let columns = [
    GridItem(.flexible()),
    GridItem(.flexible()),
]

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.black.ignoresSafeArea()
            
            ScrollView {
                
                LazyVGrid(columns: columns) {
                    ForEach(HeaderDataSource.data) { item in
                        HeaderCollectionView(data: item)
                    }
                }
                
                Label("Seus programas", systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 24))
                    .bold()
                                    
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(YourProgramsDataSource.data) { item in
                            YourProgramsCollectionView(data: item)
                        }
                    }
                }
                
                Spacer(minLength: 24)
                
                Label("Episódios pra você", systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 24))
                    .bold()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(ProgramsForYouDataSource.data) { item in
                            ProgramsForYouCollectionView(data: item)
                        }
                    }
                }
                
                Spacer(minLength: 24)
                
                Label("Tocados recentemente", systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 24))
                    .bold()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(PlayedRecentlyDataSource.data) { item in
                            PlayedRecentlyCollectionView(data: item)
                        }
                    }
                }
                
                .padding()
            }.font(.system(size: 14))
        }
    }
}

#Preview {
    ContentView()
}
