//
//  IKFollowing.swift
//  Spine iOS Example
//
//  Created by Denis Andrašec on 15.05.24.
//

import SwiftUI
import Spine

struct IKFollowing: View {
    
    @StateObject
    var model: IKFollowingModel
    
    @State
    var crossHairPosition: CGPoint?
    
    init() {
        _model = StateObject(
            wrappedValue: IKFollowingModel()
        )
    }
    
    var body: some View {
        SpineView(
            atlasFile: "spineboy.atlas",
            skeletonFile: "spineboy-pro.skel",
            controller: model.controller,
            alignment: .centerLeft
        )
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { gesture in
                    // TODO: Fix incorrect y offset in SpineRenderer or AAPLShaders
                    model.crossHairPosition = model.controller.toSkeletonCoordinates(position: gesture.location)
                }
        )
        .navigationTitle("IK Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    IKFollowing()
}

final class IKFollowingModel: ObservableObject {
    
    @Published
    var controller: SpineController
    
    @Published
    var crossHairPosition: CGPoint?
    
    init() {
        weak var weakSelf: IKFollowingModel?
        controller = SpineController(
            onInitialized: { controller in
                _ = controller.animationState.setAnimationByName(
                    trackIndex: 0,
                    animationName: "walk",
                    loop: true
                )
                _ = controller.animationState.setAnimationByName(
                    trackIndex: 1,
                    animationName: "aim",
                    loop: true
                )
            },
            onAfterUpdateWorldTransforms: { controller in
                guard let worldPosition = weakSelf?.crossHairPosition else {
                    return
                }
                let bone = controller.skeleton.findBone(boneName: "crosshair")!
                let parent = bone.parent
                let position = parent.worldToLocal(worldX: Float(worldPosition.x), worldY:  Float(worldPosition.y))
                bone.x = position.x
                bone.y = position.y
            }
        )
        weakSelf = self
    }
}
