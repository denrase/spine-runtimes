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
        let version = Spine.version
        print("Spine \(version)")
        
        Task {
            do {
                let atlas = try await Atlas.fromAsset("spineboy.atlas")
                print(atlas)
            } catch {
                print(error)
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
