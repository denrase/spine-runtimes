//
//  SompleAnimationRepresentable.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 29.05.24.
//

import SwiftUI

struct SimpleAnimationViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = SimpleAnimationViewController
    
    func makeUIViewController(context: Context) -> SimpleAnimationViewController {
        return SimpleAnimationViewController()
    }
    
    func updateUIViewController(_ uiViewController: SimpleAnimationViewController, context: Context) {
        //
    }
}
