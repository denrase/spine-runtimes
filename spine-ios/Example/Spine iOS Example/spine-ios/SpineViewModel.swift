//
//  ConentViewModel.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 08.05.24.
//

import Foundation
import Spine
import CoreGraphics
import QuartzCore

final class SpineViewModel: ObservableObject {
    
    private var atlas: Atlas?
    private var skeletonData: SkeletonData?
    private var skeletonDrawableWrapper: SkeletonDrawableWrapper?
    
    private var displayLink: CADisplayLink?
    private var displayLinkStart: CFTimeInterval = 0
    private var displayLinkElapsed: Double = 0
    
    deinit {
        atlas?.dispose()
        skeletonData?.dispose()
        skeletonDrawableWrapper?.dispose()
    }
    
    func load() async throws -> (Atlas, [CGImage]) {
        let atlasAndPages = try await Atlas.fromAsset("spineboy.atlas")
        try await MainActor.run {
            self.atlas = atlasAndPages.0
            
            let skeletonData = try SkeletonData.fromAsset(
                atlas: atlasAndPages.0,
                skeletonFile: "spineboy-pro.skel"
            )
            self.skeletonData = skeletonData
            
            let skeletonDrawableWrapper = try SkeletonDrawableWrapper(
                atlas: atlasAndPages.0,
                atlasPages: atlasAndPages.1,
                skeletonData: skeletonData
            )
            // TODO: introduce discardableResult
            
            _ = skeletonDrawableWrapper.animationState.setAnimationByName(
                trackIndex: 0,
                animationName: "walk",
                loop: true
            )
            
            self.skeletonDrawableWrapper = skeletonDrawableWrapper
        }
        return atlasAndPages
    }
}

extension SpineViewModel: SpineRendererDelegate {
    func spineRenderer(_ spineRenderer: SpineRenderer, needsUpdate delta: TimeInterval) {
        skeletonDrawableWrapper?.update(delta: Float(delta))
    }
}

extension SpineViewModel: SpineRendererDataSource {
    func renderCommands(_ spineRenderer: SpineRenderer) -> [RenderCommand] {
        return skeletonDrawableWrapper?.skeletonDrawable.render() ?? []
    }
}
