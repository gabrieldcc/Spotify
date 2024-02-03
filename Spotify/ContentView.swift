//
//  ContentView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 30/01/24.
//

import SwiftUI
import AVKit


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

struct ProgramsForYouCollectionView: View {
    let data: ProgramsForYouDataModel
    
    var body: some View {
        HStack{
            VStack {
                
                Image(self.data.imageName)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Label(self.data.chapterTitle, systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Label(self.data.name, systemImage: "")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2)
                    .frame(width: 150)
            }
        }
    }
}

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


enum Tab: String, CaseIterable {
    case house
    case magnifyingglass
    case book
    case wifi
}


#Preview {
    ContentView()
}
