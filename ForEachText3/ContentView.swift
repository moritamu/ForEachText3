//
//  ContentView.swift
//  ForEachText3
//
//  Created by MsMacM on 2024/11/07.
//

import SwiftUI

struct Fluits: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    @State var fluits = [
        Fluits(name: "りんご")
        , Fluits(name: "みかん")
        , Fluits(name: "ぶどう")
        , Fluits(name: "いちご")
        , Fluits(name: "あばか")
        , Fluits(name: "なつめ")
    ]
    
    var body: some View {
        List {
            ForEach(fluits) { fluit in
                Text(fluit.name)
            }
            .onDelete(perform: delete)
        }
    }
    func delete(offsets: IndexSet) {
        fluits.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
