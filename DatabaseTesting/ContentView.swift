//
//  ContentView.swift
//  DatabaseTesting
//
//  Created by Oleg Plugaru on 28.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Crash") {
              fatalError("Crash was triggered")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
