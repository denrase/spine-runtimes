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
    
    public func makeUIViewController(context: Context) -> SpineViewController {
        return SpineViewController()
    }
    
    public func updateUIViewController(_ uiViewController: SpineViewController, context: Context) {
        //
    }
}
