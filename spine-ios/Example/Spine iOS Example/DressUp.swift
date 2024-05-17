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
        HStack(spacing: 0) {
            List {
                ForEach(model.skinImages.keys.sorted(), id: \.self) { skinName in
                    let rawImageData = model.skinImages[skinName]!
                    Button(action: { model.toggleSkin(skinName: skinName) }) {
                        Image(uiImage: UIImage(cgImage: rawImageData))
                            .resizable()
                            .scaledToFit()
                            .frame(width: model.thumbnailSize.width, height: model.thumbnailSize.height)
                            .grayscale(model.selectedSkins[skinName] == true ? 0.0 : 1.0)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            
            Divider()
            
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
    
    let thumbnailSize = CGSize(width: 200, height: 200)
    var drawable: SkeletonDrawableWrapper?
    
    @Published
    var customSkin: Skin?
    
    @Published
    var skinImages = [String: CGImage]()
    
    @Published
    var selectedSkins = [String: Bool]()
    
    init() {
        weak var weakSelf: DressUpModel?
        controller = SpineController(
            onInitialized: { controller in
                controller.animationState.setAnimationByName(trackIndex: 0, animationName: "dance", loop: true)
                
                guard let drawable = controller.drawable else {
                    return
                }
                for skin in drawable.skeletonData.skins {
                    if skin.name == "default" { continue }
                    let skeleton = drawable.skeleton
                    skeleton.skin = skin
                    skeleton.setToSetupPose()
                    skeleton.update(delta: 0)
                    skeleton.updateWorldTransform(physics: SPINE_PHYSICS_UPDATE)
                    skin.name.flatMap { skinName in
                        do {
                            weakSelf?.skinImages[skinName] = try drawable.renderToImage(
                                size: weakSelf?.thumbnailSize ?? .zero,
                                backgroundColor: .white
                            )
                        } catch {
                            print(error)
                        }
                        weakSelf?.selectedSkins[skinName] = false
                    }
                }
                weakSelf?.drawable = drawable
                weakSelf?.toggleSkin(skinName: "full-skins/girl")
            }
        )
        weakSelf = self
    }
    
    func toggleSkin(skinName: String) {
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
        if let customSkin {
            drawable?.skeleton.skin = customSkin
        }
        drawable?.skeleton.setToSetupPose()
      }
}
