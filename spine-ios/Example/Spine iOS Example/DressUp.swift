//
//  DressUp.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 16.05.24.
//

import SwiftUI
import Spine
import SpineWrapper

struct DressUp: View {
    
    @StateObject
    var model: DressUpModel
    
    init() {
        _model = StateObject(
            wrappedValue: DressUpModel()
        )
    }
    
    var body: some View {
        HStack {
            if !model.skinImages.isEmpty {
                List {
                    
                }
            }
            SpineView(
                atlasFile: "mix-and-match.atlas",
                skeletonFile: "mix-and-match-pro.skel",
                controller: model.controller,
                boundsProvider: SkinAndAnimationBounds(skins: ["full-skins/girl"])
            )
        }
        .navigationTitle("Dress Up")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DressUp()
}

final class DressUpModel: ObservableObject {
    
    @Published
    var controller: SpineController
    
    var drawable: SkeletonDrawableWrapper?
    var customSkin: Skin?
    var skinImages = [String: CGImage]()
    var selectedSkins = [String: Bool]()
    
    init() {
        weak var weakSelf: DressUpModel?
        controller = SpineController(
            onInitialized: { controller in
                guard let drawable = controller.drawable else {
                    return
                }
                if let skin = (drawable.skeletonData.skins.first { $0.name != "default" }) {
//                for skin in drawable.skeletonData.skins {
//                    if skin.name == "default" { continue }
                    let skeleton = drawable.skeleton
                    skeleton.skin = skin
                    skeleton.setToSetupPose()
                    skeleton.update(delta: 0)
                    skeleton.updateWorldTransform(physics: SPINE_PHYSICS_UPDATE)
                    skin.name.flatMap { skinName in
                        Task {
                            do {
                                try await drawable.renderToSpineUIView(size: CGSize(width: 200, height: 200), backgroundColor: .white)
                            } catch {
                                print(error)
                            }
                        }
                        
//                        weakSelf?.skinImages[skinName] = await drawable.renderToRawImageData(thumbnailSize, thumbnailSize, 0xffffffff);
                        weakSelf?.selectedSkins[skinName] = false
                    }
                }
                weakSelf?.drawable = drawable
                weakSelf?.toggleSkin(skinName: "full-skins/girl")
            }
        )
        weakSelf = self
    }
    
    private func toggleSkin(skinName: String) {
        selectedSkins[skinName] = !(selectedSkins[skinName] ?? false)
        customSkin?.dispose()
        customSkin = Skin.create(name: "custom-skin")
        for skinName in selectedSkins.keys {
          if selectedSkins[skinName] == true {
              if let skin = drawable?.skeletonData.findSkin(name: skinName) {
                  customSkin?.addSkin(other: skin)
              }
          }
        }
        drawable?.skeleton.skin = customSkin
        drawable?.skeleton.setToSetupPose()
      }
}
