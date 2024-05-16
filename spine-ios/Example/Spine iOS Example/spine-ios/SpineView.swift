//
//  File.swift
//  
//
//  Created by Denis Andrašec on 17.04.24.
//

import SwiftUI
import Spine

public struct SpineView: UIViewRepresentable {
    
    public typealias UIViewType = SpineUIView

    private let atlasFile: String
    private let skeletonFile: String
    
    private let controller: SpineController
    private let mode: Spine.ContentMode
    private let alignment: Spine.Alignment
    private let boundsProvider: BoundsProvider
    
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
    }
    
    public func makeUIView(context: Context) -> SpineUIView {
        return SpineUIView(
            atlasFile: atlasFile,
            skeletonFile: skeletonFile,
            controller: controller,
            mode: mode,
            alignment: alignment,
            boundsProvider: boundsProvider
        )
    }
    
    public func updateUIView(_ uiView: SpineUIView, context: Context) {
        // Stub
    }
}
