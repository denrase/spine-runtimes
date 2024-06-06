//
//  ContentView.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 29.05.24.
//

import SwiftUI
import SpineCppLite

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(spine_major_version()).\(spine_minor_version())")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
