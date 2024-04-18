//
//  SpineViewController.swift
//
//
//  Created by Denis Andrašec on 17.04.24.
//

import UIKit
import MetalKit

final class SpineViewController: UIViewController {
    
    var renderer: SpineRenderer?
    
    var mtkView: MTKView {
        return view as! MTKView
    }
    
    override func loadView() {
        view = MTKView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mtkView.device = MTLCreateSystemDefaultDevice()
        mtkView.clearColor = MTLClearColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)

        do {
            renderer = try SpineRenderer(mtkView: mtkView)
            renderer?.mtkView(mtkView, drawableSizeWillChange: mtkView.drawableSize)
            mtkView.delegate = renderer;
        } catch {
            print(error)
        }
    }
}
