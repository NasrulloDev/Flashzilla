//
//  ContentView.swift
//  Flashzilla
//
//  Created by Насрулло Исмоилжонов on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase

    var body: some View {
        Text("Hello, world!")
            .onChange(of: scenePhase) { oldPhase, newPhase in
                if newPhase == .active {
                    print("Active")
                } else if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .background {
                    print("Background")
                }
            }
    }
}

#Preview {
    ContentView()
}
