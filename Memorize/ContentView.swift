//
//  ContentView.swift
//  Memorize
//
//  Created by Guga Gongadze on 07.01.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {    
    @State var isFaceUp  = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)

            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👺").font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
