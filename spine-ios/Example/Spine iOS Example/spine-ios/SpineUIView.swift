//
//  SpineUIView.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 16.05.24.
//

import UIKit
import MetalKit
import Spine

public final class SpineUIView: MTKView {
    
    private let atlasFile: String
    private let skeletonFile: String
    
    internal let controller: SpineController
    internal let mode: Spine.ContentMode
    internal let alignment: Spine.Alignment
    internal let boundsProvider: BoundsProvider
    
    private var renderer: SpineRenderer?
    
    public init(
        atlasFile: String,
        skeletonFile: String,
        controller: SpineController? = nil,
        mode: Spine.ContentMode? = nil,
        alignment: Spine.Alignment? = nil,
        boundsProvider: BoundsProvider? = nil
    ) {
        self.atlasFile = atlasFile
        self.skeletonFile = skeletonFile
        
        self.controller = controller ?? SpineController()
        self.mode = mode ?? .fit
        self.alignment = alignment ?? .center
        self.boundsProvider = boundsProvider ?? SetupPoseBounds()
        
        super.init(frame: .zero, device: MTLCreateSystemDefaultDevice())
        clearColor = MTLClearColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        load()
    }
    
    public override init(frame frameRect: CGRect, device: MTLDevice?) {
        fatalError("init(frame: device:) has not been implemented. Use init() instead.")
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented. Use init() instead.")
    }
    
    private func load() {
        Task.detached(priority: .high) {
            do {
                try await self.controller.load(
                    atlasFile: self.atlasFile,
                    skeletonFile: self.skeletonFile
                )
                try await MainActor.run {
                    try self.initRenderer(
                        atlasPages: self.controller.drawable.atlasPages
                    )
                    self.controller.initialize()
                }
            } catch {
                print(error)
            }
        }
    }
    
    private func initRenderer(atlasPages: [CGImage]) throws {
        renderer = try SpineRenderer(
            spineView: self,
            atlasPages: atlasPages
        )
        renderer?.delegate = controller
        renderer?.dataSource = controller
        renderer?.mtkView(self, drawableSizeWillChange: self.drawableSize)
        delegate = renderer
    }
}
