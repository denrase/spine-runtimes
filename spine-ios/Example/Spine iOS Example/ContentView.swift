//
//  ContentView.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 17.04.24.
//

import SwiftUI
import BaseViews
import Spine

struct ContentView: View {
    
    init() {
        do {
            let meshUrl = Bundle.main.url(forResource: "spineboy", withExtension: "mesh")!
            let imageUrl = Bundle.main.url(forResource: "spineboy", withExtension: "png")!
            
            let mesh = try String(contentsOf: meshUrl, encoding: .utf8)
            let imageData = try Data(contentsOf: imageUrl)
            
            let image = UIImage(data: imageData)!
            loadVertices(mesh: mesh, texture: image)
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, \(Spine.name)!")
        }
        .padding()
    }
    
    func loadVertices(mesh: String, texture: UIImage) {
        let lines = mesh.split(separator: "\n")
        let numVertices = Int(lines[0])!;
        let numIndices = Int(lines[1])!;
        
        var positions = [Float32](repeating: 0, count: numVertices * 2)
        var uvs = [Float32](repeating: 0, count: numVertices * 2)
        var colors = [Int32](repeating: 0, count: numVertices)
        var indices = [UInt16](repeating: 0, count: numVertices)
        
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
        for i in 0 ..< numVertices {
            indices[i] = UInt16(lines[idx])!;
            idx += 1
        }
        
        print("foo")
    }
}

#Preview {
    ContentView()
}
