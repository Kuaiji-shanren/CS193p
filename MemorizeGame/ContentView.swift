//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Orchidea on 2024/3/27.
//

import SwiftUI

struct ContentView: View {
    let emojies: Array<String> = ["👻", "🎃", "🕷️", "😈"]
    var body: some View {
        HStack {
            ForEach(emojies.indices, id: \.self) { index in
                CardView(content: emojies[index])
                
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        } 
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
        
}



#Preview {
    ContentView()
}
