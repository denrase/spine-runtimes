//
//  Spine_iOS_ExampleApp.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 17.04.24.
//

import SwiftUI
import Spine

@main
struct SpineExampleApp: App {
    
    init() {
        let name = Spine.name
        print(name)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
