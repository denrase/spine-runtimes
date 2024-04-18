//
//  File.swift
//  
//
//  Created by Denis Andrašec on 17.04.24.
//

import SwiftUI

struct SpineView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SpineViewController
    
    func makeUIViewController(context: Context) -> SpineViewController {
        return SpineViewController()
    }
    
    func updateUIViewController(_ uiViewController: SpineViewController, context: Context) {
        //
    }
}
