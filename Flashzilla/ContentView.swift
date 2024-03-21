//
//  ContentView.swift
//  Flashzilla
//
//  Created by Насрулло Исмоилжонов on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onLongPressGesture(minimumDuration: 1) {
                    print("Long pressed!")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)!")
                }

            Text("Hello, world!")
                .onLongPressGesture {
                    print("Long pressed!")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
