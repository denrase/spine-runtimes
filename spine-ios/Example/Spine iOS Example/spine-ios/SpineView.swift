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
        controller: SpineController = SpineController(),
        mode: Spine.ContentMode = .fit,
        alignment: Spine.Alignment = .center,
        boundsProvider: BoundsProvider = SetupPoseBounds(),
        backgroundColor: UIColor = .white
    ) {
        self.atlasFile = atlasFile
        self.skeletonFile = skeletonFile
        self.controller = controller
        self.mode = mode
        self.alignment = alignment
        self.boundsProvider = boundsProvider
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
