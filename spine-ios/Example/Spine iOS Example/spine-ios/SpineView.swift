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
    
    let atlasFile: String
    let skeletonFile: String
    let controller: SpineController
    
    init(atlasFile: String, skeletonFile: String, controller: SpineController) {
        self.atlasFile = atlasFile
        self.skeletonFile = skeletonFile
        self.controller = controller
    }
    
    public func makeUIViewController(context: Context) -> SpineViewController {
        return SpineViewController(atlasFile: atlasFile, skeletonFile: skeletonFile, controller: controller)
    }
    
    public func updateUIViewController(_ uiViewController: SpineViewController, context: Context) {
        //
    }
}
