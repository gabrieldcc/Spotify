//
//  YourProgramsDataSource.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 02/02/24.
//

import Foundation
import SwiftUI

final class YourProgramsDataSource {
    
    static let data: [YourProgramsDataModel] = [
            .init(id: "0",
              name: "NerdCast",
              imageName: "nerdcast",
              subtitle: "Show - Jovem Nerd",
              genrer: "Educação"),
        
            .init(id: "1",
                  name: "Naruhodo",
                  imageName: "naruhodo",
                  subtitle: "Show - b9, Naruhodo, Ken Fujioka",
                  genrer: "Educação"),
        
            .init(id: "2",
                  name: "Dev Sem Fronteiras",
                  imageName: "dev-sem-fronteiras",
                  subtitle: "Show - Alura",
                  genrer: "Negócios e tecnologia"),
        
            .init(id: "3",
                  name: "Achismos",
                  imageName: "achismos",
                  subtitle: "Show - Maurício Meirelles",
                  genrer: "Arte e entretenimento"),
        
    ]
}


#Preview {
    ContentView()
}
