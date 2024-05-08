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

public final class SpineController: ObservableObject {
    
    public private(set) var drawable: SkeletonDrawableWrapper!
    
    private let onInitialized: (_ controller: SpineController) -> Void
    
    init(onInitialized: @escaping (_ controller: SpineController) -> Void) {
        self.onInitialized = onInitialized
    }
    
    public var atlas: Atlas {
        drawable.atlas
    }
    
    public var skeletonData: Skeleton {
        drawable.skeleton
    }
    
    public var skeleton: Skeleton {
        drawable.skeleton
    }
    
    public var animationStateData: AnimationStateData {
        drawable.animationStateData
    }
    
    public var animationState: AnimationState {
        drawable.animationState
    }
    
    deinit {
        drawable?.dispose()
    }
    
    internal func initialize(atlasFile: String, skeletonFile: String) async throws {
        let atlasAndPages = try await Atlas.fromAsset(atlasFile)
        try await MainActor.run {
            let skeletonData = try SkeletonData.fromAsset(
                atlas: atlasAndPages.0,
                skeletonFile: skeletonFile
            )
            let skeletonDrawableWrapper = try SkeletonDrawableWrapper(
                atlas: atlasAndPages.0,
                atlasPages: atlasAndPages.1,
                skeletonData: skeletonData
            )
            self.drawable = skeletonDrawableWrapper
            
            onInitialized(self)
        }
    }
}

extension SpineController: SpineRendererDelegate {
    func spineRenderer(_ spineRenderer: SpineRenderer, needsUpdate delta: TimeInterval) {
        drawable?.update(delta: Float(delta))
    }
}

extension SpineController: SpineRendererDataSource {
    func renderCommands(_ spineRenderer: SpineRenderer) -> [RenderCommand] {
        return drawable?.skeletonDrawable.render() ?? []
    }
}
