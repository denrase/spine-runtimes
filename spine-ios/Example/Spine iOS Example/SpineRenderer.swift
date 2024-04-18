//
//  SpineRenderer.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 17.04.24.
//

import Foundation
import MetalKit
import SpineSharedStructs

final class SpineRenderer: NSObject, MTKViewDelegate {
    
    let mtkView: MTKView
    let device: MTLDevice
    let pipelineState: MTLRenderPipelineState
    let commandQueue: MTLCommandQueue
    
    var viewPortSize = vector_uint2(0, 0)
    
    init(mtkView: MTKView) throws {
        self.mtkView = mtkView
        
        let device = mtkView.device!
        self.device = device
        
        let defaultLibrary = device.makeDefaultLibrary()
        
        let pipelineStateDescriptor = MTLRenderPipelineDescriptor()
        pipelineStateDescriptor.label = "Simple Pipeline";
        pipelineStateDescriptor.vertexFunction = defaultLibrary?.makeFunction(name: "vertexShader")
        pipelineStateDescriptor.fragmentFunction = defaultLibrary?.makeFunction(name: "fragmentShader")
        pipelineStateDescriptor.colorAttachments[0].pixelFormat = mtkView.colorPixelFormat
        
        pipelineState = try device.makeRenderPipelineState(descriptor: pipelineStateDescriptor)
        commandQueue = device.makeCommandQueue()!
    }
    
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        viewPortSize = vector_uint2(UInt32(size.width), UInt32(size.height))
    }
    
    func draw(in view: MTKView) {
        let triangleVertices = [
            AAPLVertex(position: vector_float2(x: 250, y: -250), color: vector_float4(1, 0, 0, 1)),
            AAPLVertex(position: vector_float2(x: -250, y: -250), color: vector_float4(0, 1, 0, 1)),
            AAPLVertex(position: vector_float2(x: 250, y: 250), color: vector_float4(0, 0, 1, 1)),
            AAPLVertex(position: vector_float2(x: -250, y: -250), color: vector_float4(0, 1, 0, 1)),
            AAPLVertex(position: vector_float2(x: 250, y: 250), color: vector_float4(0, 0, 1, 1)),
            AAPLVertex(position: vector_float2(x: -250, y: 250), color: vector_float4(0, 0, 1, 1)),
        ]
        
        guard let commandBuffer = commandQueue.makeCommandBuffer() else {
            return
        }
        commandBuffer.label = "MyCommandBuffer"
        
        guard let renderPassDescriptor = view.currentRenderPassDescriptor else {
            return
        }
        
        guard let renderEncoder = commandBuffer.makeRenderCommandEncoder(descriptor: renderPassDescriptor) else {
            return
        }
        renderEncoder.label = "MyRenderEncoder"
        renderEncoder.setViewport(
            MTLViewport(
                originX: 0.0,
                originY: 0.0,
                width: Double(viewPortSize.x),
                height: Double(viewPortSize.y),
                znear: 0.0,
                zfar: 1.0
            )
        )
        renderEncoder.setRenderPipelineState(pipelineState)
        
        renderEncoder.setVertexBytes(
            triangleVertices,
            length: MemoryLayout<AAPLVertex>.stride * triangleVertices.count,
            index: Int(AAPLVertexInputIndexVertices.rawValue)
        )
                    
        renderEncoder.setVertexBytes(
            &viewPortSize,
            length: MemoryLayout.size(ofValue: viewPortSize),
            index: Int(AAPLVertexInputIndexViewportSize.rawValue)
        )
        
        renderEncoder.drawPrimitives(
            type: .triangle,
            vertexStart: 0,
            vertexCount: 6
        )

        renderEncoder.endEncoding()
        if let currentDrawable = view.currentDrawable {
            commandBuffer.present(currentDrawable)
            commandBuffer.commit()
        } else {
            print("FOO could not get drawable")
        }
    }
}
