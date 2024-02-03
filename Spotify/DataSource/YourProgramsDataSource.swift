//
//  YourProgramsDataSource.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 02/02/24.
//

import Foundation


final class YourProgramsDataSource {
    
    static let data: [YourProgramsDataModel] = [
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
}
