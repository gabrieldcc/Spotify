//
//  AutoScrollingTextView.swift
//  Spotify
//
//  Created by Gabriel de Castro Chaves on 06/02/24.
//

import Foundation
import SwiftUI

struct AutoScrollingTextView: View {
    @State private var scrollText: Bool = false
    private let text: String
    private let textWidth: CGFloat =  550 // Largura total do texto
    private let titleWidth: CGFloat =  280.0 // Largura visível da Label
    private let titleHeight: CGFloat =  50.0 // Altura da Label
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                Text(text)
                    .frame(minWidth: titleWidth, minHeight: titleHeight, alignment: .center)
                    .offset(x: (titleWidth < textWidth) ? (scrollText ? -(textWidth - titleWidth) : titleWidth) :  0, y:  0)
                    .animation(Animation.linear(duration:  10).repeatForever(autoreverses: false), value: scrollText)
                    .onAppear {
                        self.scrollText.toggle()
                    }
            }
        }
        .frame(maxWidth: titleWidth, alignment: .center)
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
