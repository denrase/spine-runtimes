//
//  File.swift
//  
//
//  Created by Denis Andrašec on 17.04.24.
//

import SwiftUI
import Spine

public struct SpineView: UIViewControllerRepresentable {
    public typealias UIViewControllerType = SpineViewController
    
    private let atlasFile: String
    private let skeletonFile: String
    private let controller: SpineController
    
    private let boundsProvider: BoundsProvider
    
    public init(atlasFile: String, skeletonFile: String, controller: SpineController, boundsProvider: BoundsProvider? = nil) {
        self.atlasFile = atlasFile
        self.skeletonFile = skeletonFile
        self.controller = controller
        self.boundsProvider = boundsProvider ?? SetupPoseBounds()
    }
    
    public func makeUIViewController(context: Context) -> SpineViewController {
        return SpineViewController(
            atlasFile: atlasFile,
            skeletonFile: skeletonFile,
            controller: controller,
            boundsProvider: boundsProvider
        )
    }
    
    public func updateUIViewController(_ uiViewController: SpineViewController, context: Context) {
        //
    }
}
