//
//  ContentView.swift
//  Flashzilla
//
//  Created by Насрулло Исмоилжонов on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text("Hello world!")
            .onReceive(timer){ time in
                if counter == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }

                counter += 1
            }
    }
}

#Preview {
    ContentView()
}
