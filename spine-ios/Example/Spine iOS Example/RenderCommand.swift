//
//  RenderCommand.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 18.04.24.
//

import UIKit
import SpineSharedStructs

struct RenderCommand {
    let numVertices: Int
    let numIndices: Int
    let positions: [Float32]
    let uvs: [Float32]
    let colors: [Int32]
    let indices: [UInt16]
    let texture: UIImage
    
    init(mesh: String, texture: UIImage) {
        let lines = mesh.split(separator: "\n")
        let numVertices = Int(lines[0])!;
        let numIndices = Int(lines[1])!;
        
        var positions = [Float32](repeating: 0, count: numVertices * 2)
        var uvs = [Float32](repeating: 0, count: numVertices * 2)
        var colors = [Int32](repeating: 0, count: numVertices)
        var indices = [UInt16](repeating: 0, count: numIndices) // 3 vertex indices that build a triangle
        
        var idx = 2
        for i in 0..<numVertices * 2 {
            positions[i] = Float32(lines[idx])! * 0.2
            idx += 1
        }
        for i in 0..<numVertices * 2 {
            uvs[i] = Float32(lines[idx])! * (i % 2 == 0 ? Float32(texture.size.width) : Float32(texture.size.height));
            idx += 1
        }
        for i in 0 ..< numVertices {
            colors[i] = Int32(lines[idx])!;
            idx += 1
        }
        for i in 0 ..< numIndices {
            indices[i] = UInt16(lines[idx])!;
            idx += 1
        }
        
        self.numVertices = numVertices
        self.numIndices = numIndices
        self.positions = positions
        self.uvs = uvs
        self.colors = colors
        self.indices = indices
        self.texture = texture
    }
    
    func getVertices() -> [AAPLVertex] {
        var vertices = [AAPLVertex]()
        
        for i in  0..<indices.count {
            let index = Int(indices[i])
            
            let xIndex = 2 * index
            let yIndex = xIndex + 1
            
            let positionX = positions[xIndex]
            let positionY = positions[yIndex]
            let uvX = uvs[xIndex]
            let uvY = uvs[yIndex]
            
            let vertex = AAPLVertex(
                position: vector_float2(positionX, positionY),
                color: vector_float4(0.0, 1.0, 0.0, 1.0), // TODO
                mv: vector_float2(uvX, uvY)
            )
            vertices.append(vertex)
        }
        return vertices
    }
}
