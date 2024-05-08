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
                // Load
                
                let atlasAndPages = try await Atlas.fromAsset("spineboy.atlas")
                print(atlasAndPages)
                
                let skeletonDataFromJson = try SkeletonData.fromAsset(
                    atlas: atlasAndPages.0,
                    skeletonFile: "spineboy-pro.json"
                )
                print(skeletonDataFromJson)
                
                let skeletonDataFromBinary = try SkeletonData.fromAsset(
                    atlas: atlasAndPages.0,
                    skeletonFile: "spineboy-pro.skel"
                )
                print(skeletonDataFromBinary)
                
                let skeletonDrawableWrapper = try SkeletonDrawableWrapper(
                    atlas: atlasAndPages.0,
                    atlasPages: atlasAndPages.1,
                    skeletonData: skeletonDataFromBinary
                )
                let renderCommands = skeletonDrawableWrapper.render()
                print(renderCommands)
                
                // Dispose
                
                atlasAndPages.0.dispose()
                skeletonDataFromJson.dispose()
                skeletonDataFromBinary.dispose()
                skeletonDrawableWrapper.dispose()
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
