//
//  ContentView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 30/01/24.
//

import SwiftUI

struct HeaderDataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
}

struct YourProgramsDataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
    let subtitle: String
    let genrer: String
}

let columns = [
    GridItem(.flexible()),
    GridItem(.flexible()),
]

let headerData: [HeaderDataModel] = [
    .init(id: "0", name: "NerdCast", imageName: "nerdcast"),
    .init(id: "1", name: "Naruhodo", imageName: "naruhodo"),
    .init(id: "2", name: "Achismos", imageName: "achismos"),
    .init(id: "3", name: "Dev sem fronteiras", imageName: "dev-sem-fronteiras")
]

let yourProgramsData: [YourProgramsDataModel] = [
        .init(id: "0",
          name: "NerdCast",
          imageName: "nerdcast",
          subtitle: "Show - b9, Naruhodo, Ken Fujioka",
          genrer: "Educação"),
    
        .init(id: "1",
              name: "Naruhodo",
              imageName: "naruhodo",
              subtitle: "Show - b9, Naruhodo, Ken Fujioka",
              genrer: "Educação"),
    
        .init(id: "2",
              name: "Naruhodo",
              imageName: "achismos",
              subtitle: "Show - b9, Naruhodo, Ken Fujioka",
              genrer: "Educação"),
    
        .init(id: "3",
              name: "Naruhodo",
              imageName: "dev-sem-fronteiras",
              subtitle: "Show - b9, Naruhodo, Ken Fujioka",
              genrer: "Educação"),
    
]

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(headerData) { item in
                        HeaderCollectionView(data: item)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(yourProgramsData) { item in
                            YourProgramsCollectionView(data: item)
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
                
                Text(self.data.name)
                    .foregroundStyle(.white)
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
            }
        }
    }
}


#Preview {
    ContentView()
}
