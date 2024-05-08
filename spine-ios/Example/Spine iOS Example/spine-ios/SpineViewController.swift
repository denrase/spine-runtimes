//
//  SpineViewController.swift
//
//
//  Created by Denis Andrašec on 17.04.24.
//

import UIKit
import MetalKit
import Spine

public final class SpineViewController: UIViewController {
    
    private var renderer: SpineRenderer?
    
    private var mtkView: MTKView {
        return view as! MTKView
    }
    
    private lazy var viewModel = SpineViewModel()
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func loadView() {
        view = MTKView()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        mtkView.device = MTLCreateSystemDefaultDevice()
        mtkView.clearColor = MTLClearColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        mtkView.preferredFramesPerSecond = 60
        
        load()
    }
    
    private func load() {
        Task.detached(priority: .high) {
            let atlasAndPages = try await self.viewModel.load()
            await MainActor.run {
                self.initRenderer(atlasPages: atlasAndPages.1)
            }
        }
    }
    
    private func initRenderer(atlasPages: [CGImage]) {
        do {
            renderer = try SpineRenderer(mtkView: mtkView, atlasPages: atlasPages)
            renderer?.mtkView(mtkView, drawableSizeWillChange: mtkView.drawableSize)
            renderer?.dataSource = viewModel
            
            mtkView.delegate = renderer
        } catch {
            print(error)
        }
    }
}
