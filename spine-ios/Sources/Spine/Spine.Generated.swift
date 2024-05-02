import Foundation
import SpineWrapper

public typealias SpineBlendMode = spine_blend_mode
public typealias SpineMixBlend = spine_mix_blend
public typealias SpineEventType = spine_event_type
public typealias SpineAttachmentType = spine_attachment_type
public typealias SpineConstraintType = spine_constraint_type
public typealias SpineInherit = spine_inherit
public typealias SpinePositionMode = spine_position_mode
public typealias SpineSpacingMode = spine_spacing_mode
public typealias SpineRotateMode = spine_rotate_mode
public typealias SpinePhysics = spine_physics

public final class SpineTransformConstraintData {

    internal let wrappee: spine_transform_constraint_data

    internal init(_ wrappee: spine_transform_constraint_data) {
        self.wrappee = wrappee
    }

    public var bones: [SpineBoneData] {
        let num = Int(spine_transform_constraint_data_get_num_bones(wrappee))
        let ptr = spine_transform_constraint_data_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var target: SpineBoneData {
        return .init(spine_transform_constraint_data_get_target(wrappee))
    }

    public func setTarget(target: SpineBoneData) {
        spine_transform_constraint_data_set_target(wrappee, target.wrappee)
    }

    public var mixRotate: Float {
        return spine_transform_constraint_data_get_mix_rotate(wrappee)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_transform_constraint_data_set_mix_rotate(wrappee, mixRotate)
    }

    public var mixX: Float {
        return spine_transform_constraint_data_get_mix_x(wrappee)
    }

    public func setMixX(mixX: Float) {
        spine_transform_constraint_data_set_mix_x(wrappee, mixX)
    }

    public var mixY: Float {
        return spine_transform_constraint_data_get_mix_y(wrappee)
    }

    public func setMixY(mixY: Float) {
        spine_transform_constraint_data_set_mix_y(wrappee, mixY)
    }

    public var mixScaleX: Float {
        return spine_transform_constraint_data_get_mix_scale_x(wrappee)
    }

    public func setMixScaleX(mixScaleX: Float) {
        spine_transform_constraint_data_set_mix_scale_x(wrappee, mixScaleX)
    }

    public var mixScaleY: Float {
        return spine_transform_constraint_data_get_mix_scale_y(wrappee)
    }

    public func setMixScaleY(mixScaleY: Float) {
        spine_transform_constraint_data_set_mix_scale_y(wrappee, mixScaleY)
    }

    public var mixShearY: Float {
        return spine_transform_constraint_data_get_mix_shear_y(wrappee)
    }

    public func setMixShearY(mixShearY: Float) {
        spine_transform_constraint_data_set_mix_shear_y(wrappee, mixShearY)
    }

    public var offsetRotation: Float {
        return spine_transform_constraint_data_get_offset_rotation(wrappee)
    }

    public func setOffsetRotation(offsetRotation: Float) {
        spine_transform_constraint_data_set_offset_rotation(wrappee, offsetRotation)
    }

    public var offsetX: Float {
        return spine_transform_constraint_data_get_offset_x(wrappee)
    }

    public func setOffsetX(offsetX: Float) {
        spine_transform_constraint_data_set_offset_x(wrappee, offsetX)
    }

    public var offsetY: Float {
        return spine_transform_constraint_data_get_offset_y(wrappee)
    }

    public func setOffsetY(offsetY: Float) {
        spine_transform_constraint_data_set_offset_y(wrappee, offsetY)
    }

    public var offsetScaleX: Float {
        return spine_transform_constraint_data_get_offset_scale_x(wrappee)
    }

    public func setOffsetScaleX(offsetScaleX: Float) {
        spine_transform_constraint_data_set_offset_scale_x(wrappee, offsetScaleX)
    }

    public var offsetScaleY: Float {
        return spine_transform_constraint_data_get_offset_scale_y(wrappee)
    }

    public func setOffsetScaleY(offsetScaleY: Float) {
        spine_transform_constraint_data_set_offset_scale_y(wrappee, offsetScaleY)
    }

    public var offsetShearY: Float {
        return spine_transform_constraint_data_get_offset_shear_y(wrappee)
    }

    public func setOffsetShearY(offsetShearY: Float) {
        spine_transform_constraint_data_set_offset_shear_y(wrappee, offsetShearY)
    }

    public var isRelative: Int32 {
        return spine_transform_constraint_data_get_is_relative(wrappee)
    }

    public func setIsRelative(isRelative: Int32) {
        spine_transform_constraint_data_set_is_relative(wrappee, isRelative)
    }

    public var isLocal: Int32 {
        return spine_transform_constraint_data_get_is_local(wrappee)
    }

    public func setIsLocal(isLocal: Int32) {
        spine_transform_constraint_data_set_is_local(wrappee, isLocal)
    }

}

public final class SpineBoundingBoxAttachment {

    internal let wrappee: spine_bounding_box_attachment

    internal init(_ wrappee: spine_bounding_box_attachment) {
        self.wrappee = wrappee
    }

    public var color: SpineColor {
        return .init(spine_bounding_box_attachment_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_bounding_box_attachment_set_color(wrappee, r, g, b, a)
    }

}

public final class SpinePhysicsConstraintData {

    internal let wrappee: spine_physics_constraint_data

    internal init(_ wrappee: spine_physics_constraint_data) {
        self.wrappee = wrappee
    }

    public func setBone(bone: SpineBoneData) {
        spine_physics_constraint_data_set_bone(wrappee, bone.wrappee)
    }

    public var bone: SpineBoneData {
        return .init(spine_physics_constraint_data_get_bone(wrappee))
    }

    public func setX(x: Float) {
        spine_physics_constraint_data_set_x(wrappee, x)
    }

    public var x: Float {
        return spine_physics_constraint_data_get_x(wrappee)
    }

    public func setY(y: Float) {
        spine_physics_constraint_data_set_y(wrappee, y)
    }

    public var y: Float {
        return spine_physics_constraint_data_get_y(wrappee)
    }

    public func setRotate(rotate: Float) {
        spine_physics_constraint_data_set_rotate(wrappee, rotate)
    }

    public var rotate: Float {
        return spine_physics_constraint_data_get_rotate(wrappee)
    }

    public func setScaleX(scaleX: Float) {
        spine_physics_constraint_data_set_scale_x(wrappee, scaleX)
    }

    public var scaleX: Float {
        return spine_physics_constraint_data_get_scale_x(wrappee)
    }

    public func setShearX(shearX: Float) {
        spine_physics_constraint_data_set_shear_x(wrappee, shearX)
    }

    public var shearX: Float {
        return spine_physics_constraint_data_get_shear_x(wrappee)
    }

    public func setLimit(limit: Float) {
        spine_physics_constraint_data_set_limit(wrappee, limit)
    }

    public var limit: Float {
        return spine_physics_constraint_data_get_limit(wrappee)
    }

    public func setStep(step: Float) {
        spine_physics_constraint_data_set_step(wrappee, step)
    }

    public var step: Float {
        return spine_physics_constraint_data_get_step(wrappee)
    }

    public func setInertia(inertia: Float) {
        spine_physics_constraint_data_set_inertia(wrappee, inertia)
    }

    public var inertia: Float {
        return spine_physics_constraint_data_get_inertia(wrappee)
    }

    public func setStrength(strength: Float) {
        spine_physics_constraint_data_set_strength(wrappee, strength)
    }

    public var strength: Float {
        return spine_physics_constraint_data_get_strength(wrappee)
    }

    public func setDamping(damping: Float) {
        spine_physics_constraint_data_set_damping(wrappee, damping)
    }

    public var damping: Float {
        return spine_physics_constraint_data_get_damping(wrappee)
    }

    public func setMassInverse(massInverse: Float) {
        spine_physics_constraint_data_set_mass_inverse(wrappee, massInverse)
    }

    public var massInverse: Float {
        return spine_physics_constraint_data_get_mass_inverse(wrappee)
    }

    public func setWind(wind: Float) {
        spine_physics_constraint_data_set_wind(wrappee, wind)
    }

    public var wind: Float {
        return spine_physics_constraint_data_get_wind(wrappee)
    }

    public func setGravity(gravity: Float) {
        spine_physics_constraint_data_set_gravity(wrappee, gravity)
    }

    public var gravity: Float {
        return spine_physics_constraint_data_get_gravity(wrappee)
    }

    public func setMix(mix: Float) {
        spine_physics_constraint_data_set_mix(wrappee, mix)
    }

    public var mix: Float {
        return spine_physics_constraint_data_get_mix(wrappee)
    }

    public func setInertiaGlobal(inertiaGlobal: Int32) {
        spine_physics_constraint_data_set_inertia_global(wrappee, inertiaGlobal)
    }

    public func isInertiaGlobal() -> Int32 {
        return spine_physics_constraint_data_is_inertia_global(wrappee)
    }

    public func setStrengthGlobal(strengthGlobal: Int32) {
        spine_physics_constraint_data_set_strength_global(wrappee, strengthGlobal)
    }

    public func isStrengthGlobal() -> Int32 {
        return spine_physics_constraint_data_is_strength_global(wrappee)
    }

    public func setDampingGlobal(dampingGlobal: Int32) {
        spine_physics_constraint_data_set_damping_global(wrappee, dampingGlobal)
    }

    public func isDampingGlobal() -> Int32 {
        return spine_physics_constraint_data_is_damping_global(wrappee)
    }

    public func setMassGlobal(massGlobal: Int32) {
        spine_physics_constraint_data_set_mass_global(wrappee, massGlobal)
    }

    public func isMassGlobal() -> Int32 {
        return spine_physics_constraint_data_is_mass_global(wrappee)
    }

    public func setWindGlobal(windGlobal: Int32) {
        spine_physics_constraint_data_set_wind_global(wrappee, windGlobal)
    }

    public func isWindGlobal() -> Int32 {
        return spine_physics_constraint_data_is_wind_global(wrappee)
    }

    public func setGravityGlobal(gravityGlobal: Int32) {
        spine_physics_constraint_data_set_gravity_global(wrappee, gravityGlobal)
    }

    public func isGravityGlobal() -> Int32 {
        return spine_physics_constraint_data_is_gravity_global(wrappee)
    }

    public func setMixGlobal(mixGlobal: Int32) {
        spine_physics_constraint_data_set_mix_global(wrappee, mixGlobal)
    }

    public func isMixGlobal() -> Int32 {
        return spine_physics_constraint_data_is_mix_global(wrappee)
    }

}

public final class SpineAnimationStateEvents {

    internal let wrappee: spine_animation_state_events

    internal init(_ wrappee: spine_animation_state_events) {
        self.wrappee = wrappee
    }

    public func getEventType(index: Int32) -> SpineEventType {
        return .init(spine_animation_state_events_get_event_type(wrappee, index).rawValue)
    }

    public func getTrackEntry(index: Int32) -> SpineTrackEntry {
        return .init(spine_animation_state_events_get_track_entry(wrappee, index))
    }

    public func getEvent(index: Int32) -> SpineEvent {
        return .init(spine_animation_state_events_get_event(wrappee, index))
    }

    public func reset() {
        spine_animation_state_events_reset(wrappee)
    }

}

public final class SpineTransformConstraint {

    internal let wrappee: spine_transform_constraint

    internal init(_ wrappee: spine_transform_constraint) {
        self.wrappee = wrappee
    }

    public func update() {
        spine_transform_constraint_update(wrappee)
    }

    public var order: Int32 {
        return spine_transform_constraint_get_order(wrappee)
    }

    public var data: SpineTransformConstraintData {
        return .init(spine_transform_constraint_get_data(wrappee))
    }

    public var bones: [SpineBone] {
        let num = Int(spine_transform_constraint_get_num_bones(wrappee))
        let ptr = spine_transform_constraint_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var target: SpineBone {
        return .init(spine_transform_constraint_get_target(wrappee))
    }

    public func setTarget(target: SpineBone) {
        spine_transform_constraint_set_target(wrappee, target.wrappee)
    }

    public var mixRotate: Float {
        return spine_transform_constraint_get_mix_rotate(wrappee)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_transform_constraint_set_mix_rotate(wrappee, mixRotate)
    }

    public var mixX: Float {
        return spine_transform_constraint_get_mix_x(wrappee)
    }

    public func setMixX(mixX: Float) {
        spine_transform_constraint_set_mix_x(wrappee, mixX)
    }

    public var mixY: Float {
        return spine_transform_constraint_get_mix_y(wrappee)
    }

    public func setMixY(mixY: Float) {
        spine_transform_constraint_set_mix_y(wrappee, mixY)
    }

    public var mixScaleX: Float {
        return spine_transform_constraint_get_mix_scale_x(wrappee)
    }

    public func setMixScaleX(mixScaleX: Float) {
        spine_transform_constraint_set_mix_scale_x(wrappee, mixScaleX)
    }

    public var mixScaleY: Float {
        return spine_transform_constraint_get_mix_scale_y(wrappee)
    }

    public func setMixScaleY(mixScaleY: Float) {
        spine_transform_constraint_set_mix_scale_y(wrappee, mixScaleY)
    }

    public var mixShearY: Float {
        return spine_transform_constraint_get_mix_shear_y(wrappee)
    }

    public func setMixShearY(mixShearY: Float) {
        spine_transform_constraint_set_mix_shear_y(wrappee, mixShearY)
    }

    public var isActive: Float {
        return spine_transform_constraint_get_is_active(wrappee)
    }

    public func setIsActive(isActive: Int32) {
        spine_transform_constraint_set_is_active(wrappee, isActive)
    }

}

public final class SpinePathConstraintData {

    internal let wrappee: spine_path_constraint_data

    internal init(_ wrappee: spine_path_constraint_data) {
        self.wrappee = wrappee
    }

    public var bones: [SpineBoneData] {
        let num = Int(spine_path_constraint_data_get_num_bones(wrappee))
        let ptr = spine_path_constraint_data_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var target: SpineSlotData {
        return .init(spine_path_constraint_data_get_target(wrappee))
    }

    public func setTarget(target: SpineSlotData) {
        spine_path_constraint_data_set_target(wrappee, target.wrappee)
    }

    public var positionMode: SpinePositionMode {
        return .init(spine_path_constraint_data_get_position_mode(wrappee).rawValue)
    }

    public func setPositionMode(positionMode: SpinePositionMode) {
        spine_path_constraint_data_set_position_mode(wrappee, positionMode)
    }

    public var spacingMode: SpineSpacingMode {
        return .init(spine_path_constraint_data_get_spacing_mode(wrappee).rawValue)
    }

    public func setSpacingMode(spacingMode: SpineSpacingMode) {
        spine_path_constraint_data_set_spacing_mode(wrappee, spacingMode)
    }

    public var rotateMode: SpineRotateMode {
        return .init(spine_path_constraint_data_get_rotate_mode(wrappee).rawValue)
    }

    public func setRotateMode(rotateMode: SpineRotateMode) {
        spine_path_constraint_data_set_rotate_mode(wrappee, rotateMode)
    }

    public var offsetRotation: Float {
        return spine_path_constraint_data_get_offset_rotation(wrappee)
    }

    public func setOffsetRotation(offsetRotation: Float) {
        spine_path_constraint_data_set_offset_rotation(wrappee, offsetRotation)
    }

    public var position: Float {
        return spine_path_constraint_data_get_position(wrappee)
    }

    public func setPosition(position: Float) {
        spine_path_constraint_data_set_position(wrappee, position)
    }

    public var spacing: Float {
        return spine_path_constraint_data_get_spacing(wrappee)
    }

    public func setSpacing(spacing: Float) {
        spine_path_constraint_data_set_spacing(wrappee, spacing)
    }

    public var mixRotate: Float {
        return spine_path_constraint_data_get_mix_rotate(wrappee)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_path_constraint_data_set_mix_rotate(wrappee, mixRotate)
    }

    public var mixX: Float {
        return spine_path_constraint_data_get_mix_x(wrappee)
    }

    public func setMixX(mixX: Float) {
        spine_path_constraint_data_set_mix_x(wrappee, mixX)
    }

    public var mixY: Float {
        return spine_path_constraint_data_get_mix_y(wrappee)
    }

    public func setMixY(mixY: Float) {
        spine_path_constraint_data_set_mix_y(wrappee, mixY)
    }

}

public final class SpineAnimationStateData {

    internal let wrappee: spine_animation_state_data

    internal init(_ wrappee: spine_animation_state_data) {
        self.wrappee = wrappee
    }

    public var skeletonData: SpineSkeletonData {
        return .init(spine_animation_state_data_get_skeleton_data(wrappee))
    }

    public var defaultMix: Float {
        return spine_animation_state_data_get_default_mix(wrappee)
    }

    public func setDefaultMix(defaultMix: Float) {
        spine_animation_state_data_set_default_mix(wrappee, defaultMix)
    }

    public func setMix(from: SpineAnimation, to: SpineAnimation, duration: Float) {
        spine_animation_state_data_set_mix(wrappee, from.wrappee, to.wrappee, duration)
    }

    public func getMix(from: SpineAnimation, to: SpineAnimation) -> Float {
        return spine_animation_state_data_get_mix(wrappee, from.wrappee, to.wrappee)
    }

    public func setMixByName(fromName: String?, toName: String?, duration: Float) {
        spine_animation_state_data_set_mix_by_name(wrappee, fromName, toName, duration)
    }

    public func getMixByName(fromName: String?, toName: String?) -> Float {
        return spine_animation_state_data_get_mix_by_name(wrappee, fromName, toName)
    }

    public func clear() {
        spine_animation_state_data_clear(wrappee)
    }

}

public final class SpineSkeletonDataResult {

    internal let wrappee: spine_skeleton_data_result

    internal init(_ wrappee: spine_skeleton_data_result) {
        self.wrappee = wrappee
    }

    public var error: String? {
        return spine_skeleton_data_result_get_error(wrappee).flatMap { String(cString: $0) }
    }

    public var data: SpineSkeletonData {
        return .init(spine_skeleton_data_result_get_data(wrappee))
    }

    public func dispose() {
        spine_skeleton_data_result_dispose(wrappee)
    }

}

public final class SpineClippingAttachment {

    internal let wrappee: spine_clipping_attachment

    internal init(_ wrappee: spine_clipping_attachment) {
        self.wrappee = wrappee
    }

    public var endSlot: SpineSlotData {
        return .init(spine_clipping_attachment_get_end_slot(wrappee))
    }

    public func setEndSlot(endSlot: SpineSlotData) {
        spine_clipping_attachment_set_end_slot(wrappee, endSlot.wrappee)
    }

    public var color: SpineColor {
        return .init(spine_clipping_attachment_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_clipping_attachment_set_color(wrappee, r, g, b, a)
    }

}

public final class SpineIkConstraintData {

    internal let wrappee: spine_ik_constraint_data

    internal init(_ wrappee: spine_ik_constraint_data) {
        self.wrappee = wrappee
    }

    public var bones: [SpineBoneData] {
        let num = Int(spine_ik_constraint_data_get_num_bones(wrappee))
        let ptr = spine_ik_constraint_data_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var target: SpineBoneData {
        return .init(spine_ik_constraint_data_get_target(wrappee))
    }

    public func setTarget(target: SpineBoneData) {
        spine_ik_constraint_data_set_target(wrappee, target.wrappee)
    }

    public var bendDirection: Int32 {
        return spine_ik_constraint_data_get_bend_direction(wrappee)
    }

    public func setBendDirection(bendDirection: Int32) {
        spine_ik_constraint_data_set_bend_direction(wrappee, bendDirection)
    }

    public var compress: Int32 {
        return spine_ik_constraint_data_get_compress(wrappee)
    }

    public func setCompress(compress: Int32) {
        spine_ik_constraint_data_set_compress(wrappee, compress)
    }

    public var stretch: Int32 {
        return spine_ik_constraint_data_get_stretch(wrappee)
    }

    public func setStretch(stretch: Int32) {
        spine_ik_constraint_data_set_stretch(wrappee, stretch)
    }

    public var uniform: Int32 {
        return spine_ik_constraint_data_get_uniform(wrappee)
    }

    public func setUniform(uniform: Int32) {
        spine_ik_constraint_data_set_uniform(wrappee, uniform)
    }

    public var mix: Float {
        return spine_ik_constraint_data_get_mix(wrappee)
    }

    public func setMix(mix: Float) {
        spine_ik_constraint_data_set_mix(wrappee, mix)
    }

    public var softness: Float {
        return spine_ik_constraint_data_get_softness(wrappee)
    }

    public func setSoftness(softness: Float) {
        spine_ik_constraint_data_set_softness(wrappee, softness)
    }

}

public final class SpinePhysicsConstraint {

    internal let wrappee: spine_physics_constraint

    internal init(_ wrappee: spine_physics_constraint) {
        self.wrappee = wrappee
    }

    public func setBone(bone: SpineBone) {
        spine_physics_constraint_set_bone(wrappee, bone.wrappee)
    }

    public var bone: SpineBone {
        return .init(spine_physics_constraint_get_bone(wrappee))
    }

    public func setInertia(value: Float) {
        spine_physics_constraint_set_inertia(wrappee, value)
    }

    public var inertia: Float {
        return spine_physics_constraint_get_inertia(wrappee)
    }

    public func setStrength(value: Float) {
        spine_physics_constraint_set_strength(wrappee, value)
    }

    public var strength: Float {
        return spine_physics_constraint_get_strength(wrappee)
    }

    public func setDamping(value: Float) {
        spine_physics_constraint_set_damping(wrappee, value)
    }

    public var damping: Float {
        return spine_physics_constraint_get_damping(wrappee)
    }

    public func setMassInverse(value: Float) {
        spine_physics_constraint_set_mass_inverse(wrappee, value)
    }

    public var massInverse: Float {
        return spine_physics_constraint_get_mass_inverse(wrappee)
    }

    public func setWind(value: Float) {
        spine_physics_constraint_set_wind(wrappee, value)
    }

    public var wind: Float {
        return spine_physics_constraint_get_wind(wrappee)
    }

    public func setGravity(value: Float) {
        spine_physics_constraint_set_gravity(wrappee, value)
    }

    public var gravity: Float {
        return spine_physics_constraint_get_gravity(wrappee)
    }

    public func setMix(value: Float) {
        spine_physics_constraint_set_mix(wrappee, value)
    }

    public var mix: Float {
        return spine_physics_constraint_get_mix(wrappee)
    }

    public func setReset(value: Int32) {
        spine_physics_constraint_set_reset(wrappee, value)
    }

    public var reset: Int32 {
        return spine_physics_constraint_get_reset(wrappee)
    }

    public func setUx(value: Float) {
        spine_physics_constraint_set_ux(wrappee, value)
    }

    public var ux: Float {
        return spine_physics_constraint_get_ux(wrappee)
    }

    public func setUy(value: Float) {
        spine_physics_constraint_set_uy(wrappee, value)
    }

    public var uy: Float {
        return spine_physics_constraint_get_uy(wrappee)
    }

    public func setCx(value: Float) {
        spine_physics_constraint_set_cx(wrappee, value)
    }

    public var cx: Float {
        return spine_physics_constraint_get_cx(wrappee)
    }

    public func setCy(value: Float) {
        spine_physics_constraint_set_cy(wrappee, value)
    }

    public var cy: Float {
        return spine_physics_constraint_get_cy(wrappee)
    }

    public func setTx(value: Float) {
        spine_physics_constraint_set_tx(wrappee, value)
    }

    public var tx: Float {
        return spine_physics_constraint_get_tx(wrappee)
    }

    public func setTy(value: Float) {
        spine_physics_constraint_set_ty(wrappee, value)
    }

    public var ty: Float {
        return spine_physics_constraint_get_ty(wrappee)
    }

    public func setXOffset(value: Float) {
        spine_physics_constraint_set_x_offset(wrappee, value)
    }

    public var xOffset: Float {
        return spine_physics_constraint_get_x_offset(wrappee)
    }

    public func setXVelocity(value: Float) {
        spine_physics_constraint_set_x_velocity(wrappee, value)
    }

    public var xVelocity: Float {
        return spine_physics_constraint_get_x_velocity(wrappee)
    }

    public func setYOffset(value: Float) {
        spine_physics_constraint_set_y_offset(wrappee, value)
    }

    public var yOffset: Float {
        return spine_physics_constraint_get_y_offset(wrappee)
    }

    public func setYVelocity(value: Float) {
        spine_physics_constraint_set_y_velocity(wrappee, value)
    }

    public var yVelocity: Float {
        return spine_physics_constraint_get_y_velocity(wrappee)
    }

    public func setRotateOffset(value: Float) {
        spine_physics_constraint_set_rotate_offset(wrappee, value)
    }

    public var rotateOffset: Float {
        return spine_physics_constraint_get_rotate_offset(wrappee)
    }

    public func setRotateVelocity(value: Float) {
        spine_physics_constraint_set_rotate_velocity(wrappee, value)
    }

    public var rotateVelocity: Float {
        return spine_physics_constraint_get_rotate_velocity(wrappee)
    }

    public func setScaleOffset(value: Float) {
        spine_physics_constraint_set_scale_offset(wrappee, value)
    }

    public var scaleOffset: Float {
        return spine_physics_constraint_get_scale_offset(wrappee)
    }

    public func setScaleVelocity(value: Float) {
        spine_physics_constraint_set_scale_velocity(wrappee, value)
    }

    public var scaleVelocity: Float {
        return spine_physics_constraint_get_scale_velocity(wrappee)
    }

    public func setActive(value: Int32) {
        spine_physics_constraint_set_active(wrappee, value)
    }

    public func isActive() -> Int32 {
        return spine_physics_constraint_is_active(wrappee)
    }

    public func setRemaining(value: Float) {
        spine_physics_constraint_set_remaining(wrappee, value)
    }

    public var remaining: Float {
        return spine_physics_constraint_get_remaining(wrappee)
    }

    public func setLastTime(value: Float) {
        spine_physics_constraint_set_last_time(wrappee, value)
    }

    public var lastTime: Float {
        return spine_physics_constraint_get_last_time(wrappee)
    }

    public func resetFully() {
        spine_physics_constraint_reset_fully(wrappee)
    }

    public func update(physics: SpinePhysics) {
        spine_physics_constraint_update(wrappee, physics)
    }

    public func translate(x: Float, y: Float) {
        spine_physics_constraint_translate(wrappee, x, y)
    }

    public func rotate(x: Float, y: Float, degrees: Float) {
        spine_physics_constraint_rotate(wrappee, x, y, degrees)
    }

}

public final class SpineRegionAttachment {

    internal let wrappee: spine_region_attachment

    internal init(_ wrappee: spine_region_attachment) {
        self.wrappee = wrappee
    }

    public func updateRegion() {
        spine_region_attachment_update_region(wrappee)
    }

    public var x: Float {
        return spine_region_attachment_get_x(wrappee)
    }

    public func setX(x: Float) {
        spine_region_attachment_set_x(wrappee, x)
    }

    public var y: Float {
        return spine_region_attachment_get_y(wrappee)
    }

    public func setY(y: Float) {
        spine_region_attachment_set_y(wrappee, y)
    }

    public var rotation: Float {
        return spine_region_attachment_get_rotation(wrappee)
    }

    public func setRotation(rotation: Float) {
        spine_region_attachment_set_rotation(wrappee, rotation)
    }

    public var scaleX: Float {
        return spine_region_attachment_get_scale_x(wrappee)
    }

    public func setScaleX(scaleX: Float) {
        spine_region_attachment_set_scale_x(wrappee, scaleX)
    }

    public var scaleY: Float {
        return spine_region_attachment_get_scale_y(wrappee)
    }

    public func setScaleY(scaleY: Float) {
        spine_region_attachment_set_scale_y(wrappee, scaleY)
    }

    public var width: Float {
        return spine_region_attachment_get_width(wrappee)
    }

    public func setWidth(width: Float) {
        spine_region_attachment_set_width(wrappee, width)
    }

    public var height: Float {
        return spine_region_attachment_get_height(wrappee)
    }

    public func setHeight(height: Float) {
        spine_region_attachment_set_height(wrappee, height)
    }

    public var color: SpineColor {
        return .init(spine_region_attachment_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_region_attachment_set_color(wrappee, r, g, b, a)
    }

    public var path: String? {
        return spine_region_attachment_get_path(wrappee).flatMap { String(cString: $0) }
    }

    public var region: SpineTextureRegion {
        return .init(spine_region_attachment_get_region(wrappee))
    }

    public var sequence: SpineSequence {
        return .init(spine_region_attachment_get_sequence(wrappee))
    }

    public var offset: [Float?] {
        let num = Int(spine_region_attachment_get_num_offset(wrappee))
        let ptr = spine_region_attachment_get_offset(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var uvs: [Float?] {
        let num = Int(spine_region_attachment_get_num_uvs(wrappee))
        let ptr = spine_region_attachment_get_uvs(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

}

public final class SpineVertexAttachment {

    internal let wrappee: spine_vertex_attachment

    internal init(_ wrappee: spine_vertex_attachment) {
        self.wrappee = wrappee
    }

    public var worldVerticesLength: Int32 {
        return spine_vertex_attachment_get_world_vertices_length(wrappee)
    }

    public var bones: [Int32?] {
        let num = Int(spine_vertex_attachment_get_num_bones(wrappee))
        let ptr = spine_vertex_attachment_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var vertices: [Float?] {
        let num = Int(spine_vertex_attachment_get_num_vertices(wrappee))
        let ptr = spine_vertex_attachment_get_vertices(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var timelineAttachment: SpineAttachment {
        return .init(spine_vertex_attachment_get_timeline_attachment(wrappee))
    }

    public func setTimelineAttachment(timelineAttachment: SpineAttachment) {
        spine_vertex_attachment_set_timeline_attachment(wrappee, timelineAttachment.wrappee)
    }

}

public final class SpineSkeletonDrawable {

    internal let wrappee: spine_skeleton_drawable

    internal init(_ wrappee: spine_skeleton_drawable) {
        self.wrappee = wrappee
    }

    public func render() -> SpineRenderCommand {
        return .init(spine_skeleton_drawable_render(wrappee))
    }

    public func dispose() {
        spine_skeleton_drawable_dispose(wrappee)
    }

    public var skeleton: SpineSkeleton {
        return .init(spine_skeleton_drawable_get_skeleton(wrappee))
    }

    public var animationState: SpineAnimationState {
        return .init(spine_skeleton_drawable_get_animation_state(wrappee))
    }

    public var animationStateData: SpineAnimationStateData {
        return .init(spine_skeleton_drawable_get_animation_state_data(wrappee))
    }

    public var animationStateEvents: SpineAnimationStateEvents {
        return .init(spine_skeleton_drawable_get_animation_state_events(wrappee))
    }

}

public final class SpinePointAttachment {

    internal let wrappee: spine_point_attachment

    internal init(_ wrappee: spine_point_attachment) {
        self.wrappee = wrappee
    }

    public func computeWorldPosition(bone: SpineBone) -> SpineVector {
        return .init(spine_point_attachment_compute_world_position(wrappee, bone.wrappee))
    }

    public func computeWorldRotation(bone: SpineBone) -> Float {
        return spine_point_attachment_compute_world_rotation(wrappee, bone.wrappee)
    }

    public var x: Float {
        return spine_point_attachment_get_x(wrappee)
    }

    public func setX(x: Float) {
        spine_point_attachment_set_x(wrappee, x)
    }

    public var y: Float {
        return spine_point_attachment_get_y(wrappee)
    }

    public func setY(y: Float) {
        spine_point_attachment_set_y(wrappee, y)
    }

    public var rotation: Float {
        return spine_point_attachment_get_rotation(wrappee)
    }

    public func setRotation(rotation: Float) {
        spine_point_attachment_set_rotation(wrappee, rotation)
    }

    public var color: SpineColor {
        return .init(spine_point_attachment_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_point_attachment_set_color(wrappee, r, g, b, a)
    }

}

public final class SpineMeshAttachment {

    internal let wrappee: spine_mesh_attachment

    internal init(_ wrappee: spine_mesh_attachment) {
        self.wrappee = wrappee
    }

    public func updateRegion() {
        spine_mesh_attachment_update_region(wrappee)
    }

    public var hullLength: Int32 {
        return spine_mesh_attachment_get_hull_length(wrappee)
    }

    public func setHullLength(hullLength: Int32) {
        spine_mesh_attachment_set_hull_length(wrappee, hullLength)
    }

    public var regionUvs: [Float?] {
        let num = Int(spine_mesh_attachment_get_num_region_uvs(wrappee))
        let ptr = spine_mesh_attachment_get_region_uvs(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var uvs: [Float?] {
        let num = Int(spine_mesh_attachment_get_num_uvs(wrappee))
        let ptr = spine_mesh_attachment_get_uvs(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var triangles: [UInt16] {
        let num = Int(spine_mesh_attachment_get_num_triangles(wrappee))
        let ptr = spine_mesh_attachment_get_triangles(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var color: SpineColor {
        return .init(spine_mesh_attachment_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_mesh_attachment_set_color(wrappee, r, g, b, a)
    }

    public var path: String? {
        return spine_mesh_attachment_get_path(wrappee).flatMap { String(cString: $0) }
    }

    public var region: SpineTextureRegion {
        return .init(spine_mesh_attachment_get_region(wrappee))
    }

    public var sequence: SpineSequence {
        return .init(spine_mesh_attachment_get_sequence(wrappee))
    }

    public var parentMesh: SpineMeshAttachment {
        return .init(spine_mesh_attachment_get_parent_mesh(wrappee))
    }

    public func setParentMesh(parentMesh: SpineMeshAttachment) {
        spine_mesh_attachment_set_parent_mesh(wrappee, parentMesh.wrappee)
    }

    public var edges: [UInt16] {
        let num = Int(spine_mesh_attachment_get_num_edges(wrappee))
        let ptr = spine_mesh_attachment_get_edges(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var width: Float {
        return spine_mesh_attachment_get_width(wrappee)
    }

    public func setWidth(width: Float) {
        spine_mesh_attachment_set_width(wrappee, width)
    }

    public var height: Float {
        return spine_mesh_attachment_get_height(wrappee)
    }

    public func setHeight(height: Float) {
        spine_mesh_attachment_set_height(wrappee, height)
    }

}

public final class SpinePathAttachment {

    internal let wrappee: spine_path_attachment

    internal init(_ wrappee: spine_path_attachment) {
        self.wrappee = wrappee
    }

    public var lengths: [Float?] {
        let num = Int(spine_path_attachment_get_num_lengths(wrappee))
        let ptr = spine_path_attachment_get_lengths(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var isClosed: Int32 {
        return spine_path_attachment_get_is_closed(wrappee)
    }

    public func setIsClosed(isClosed: Int32) {
        spine_path_attachment_set_is_closed(wrappee, isClosed)
    }

    public var isConstantSpeed: Int32 {
        return spine_path_attachment_get_is_constant_speed(wrappee)
    }

    public func setIsConstantSpeed(isConstantSpeed: Int32) {
        spine_path_attachment_set_is_constant_speed(wrappee, isConstantSpeed)
    }

    public var color: SpineColor {
        return .init(spine_path_attachment_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_path_attachment_set_color(wrappee, r, g, b, a)
    }

}

public final class SpineConstraintData {

    internal let wrappee: spine_constraint_data

    internal init(_ wrappee: spine_constraint_data) {
        self.wrappee = wrappee
    }

    public var type: SpineConstraintType {
        return .init(spine_constraint_data_get_type(wrappee).rawValue)
    }

    public var name: String? {
        return spine_constraint_data_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var order: UInt64 {
        return spine_constraint_data_get_order(wrappee)
    }

    public func setOrder(order: UInt64) {
        spine_constraint_data_set_order(wrappee, order)
    }

    public var isSkinRequired: Int32 {
        return spine_constraint_data_get_is_skin_required(wrappee)
    }

    public func setIsSkinRequired(isSkinRequired: Int32) {
        spine_constraint_data_set_is_skin_required(wrappee, isSkinRequired)
    }

}

public final class SpinePathConstraint {

    internal let wrappee: spine_path_constraint

    internal init(_ wrappee: spine_path_constraint) {
        self.wrappee = wrappee
    }

    public func update() {
        spine_path_constraint_update(wrappee)
    }

    public var order: Int32 {
        return spine_path_constraint_get_order(wrappee)
    }

    public var data: SpinePathConstraintData {
        return .init(spine_path_constraint_get_data(wrappee))
    }

    public var bones: [SpineBone] {
        let num = Int(spine_path_constraint_get_num_bones(wrappee))
        let ptr = spine_path_constraint_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var target: SpineSlot {
        return .init(spine_path_constraint_get_target(wrappee))
    }

    public func setTarget(target: SpineSlot) {
        spine_path_constraint_set_target(wrappee, target.wrappee)
    }

    public var position: Float {
        return spine_path_constraint_get_position(wrappee)
    }

    public func setPosition(position: Float) {
        spine_path_constraint_set_position(wrappee, position)
    }

    public var spacing: Float {
        return spine_path_constraint_get_spacing(wrappee)
    }

    public func setSpacing(spacing: Float) {
        spine_path_constraint_set_spacing(wrappee, spacing)
    }

    public var mixRotate: Float {
        return spine_path_constraint_get_mix_rotate(wrappee)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_path_constraint_set_mix_rotate(wrappee, mixRotate)
    }

    public var mixX: Float {
        return spine_path_constraint_get_mix_x(wrappee)
    }

    public func setMixX(mixX: Float) {
        spine_path_constraint_set_mix_x(wrappee, mixX)
    }

    public var mixY: Float {
        return spine_path_constraint_get_mix_y(wrappee)
    }

    public func setMixY(mixY: Float) {
        spine_path_constraint_set_mix_y(wrappee, mixY)
    }

    public var isActive: Int32 {
        return spine_path_constraint_get_is_active(wrappee)
    }

    public func setIsActive(isActive: Int32) {
        spine_path_constraint_set_is_active(wrappee, isActive)
    }

}

public final class SpineAnimationState {

    internal let wrappee: spine_animation_state

    internal init(_ wrappee: spine_animation_state) {
        self.wrappee = wrappee
    }

    public func update(delta: Float) {
        spine_animation_state_update(wrappee, delta)
    }

    public func apply(skeleton: SpineSkeleton) {
        spine_animation_state_apply(wrappee, skeleton.wrappee)
    }

    public func clearTracks() {
        spine_animation_state_clear_tracks(wrappee)
    }

    public func clearTrack(trackIndex: Int32) {
        spine_animation_state_clear_track(wrappee, trackIndex)
    }

    public func setAnimationByName(trackIndex: Int32, animationName: String?, loop: Int32) -> SpineTrackEntry {
        return .init(spine_animation_state_set_animation_by_name(wrappee, trackIndex, animationName, loop))
    }

    public func setAnimation(trackIndex: Int32, animation: SpineAnimation, loop: Int32) -> SpineTrackEntry {
        return .init(spine_animation_state_set_animation(wrappee, trackIndex, animation.wrappee, loop))
    }

    public func addAnimationByName(trackIndex: Int32, animationName: String?, loop: Int32, delay: Float) -> SpineTrackEntry {
        return .init(spine_animation_state_add_animation_by_name(wrappee, trackIndex, animationName, loop, delay))
    }

    public func addAnimation(trackIndex: Int32, animation: SpineAnimation, loop: Int32, delay: Float) -> SpineTrackEntry {
        return .init(spine_animation_state_add_animation(wrappee, trackIndex, animation.wrappee, loop, delay))
    }

    public func setEmptyAnimation(trackIndex: Int32, mixDuration: Float) -> SpineTrackEntry {
        return .init(spine_animation_state_set_empty_animation(wrappee, trackIndex, mixDuration))
    }

    public func addEmptyAnimation(trackIndex: Int32, mixDuration: Float, delay: Float) -> SpineTrackEntry {
        return .init(spine_animation_state_add_empty_animation(wrappee, trackIndex, mixDuration, delay))
    }

    public func setEmptyAnimations(mixDuration: Float) {
        spine_animation_state_set_empty_animations(wrappee, mixDuration)
    }

    public func getCurrent(trackIndex: Int32) -> SpineTrackEntry {
        return .init(spine_animation_state_get_current(wrappee, trackIndex))
    }

    public var data: SpineAnimationStateData {
        return .init(spine_animation_state_get_data(wrappee))
    }

    public var timeScale: Float {
        return spine_animation_state_get_time_scale(wrappee)
    }

    public func setTimeScale(timeScale: Float) {
        spine_animation_state_set_time_scale(wrappee, timeScale)
    }

    public func disposeTrackEntry(entry: SpineTrackEntry) {
        spine_animation_state_dispose_track_entry(wrappee, entry.wrappee)
    }

}

public final class SpineTextureRegion {

    internal let wrappee: spine_texture_region

    internal init(_ wrappee: spine_texture_region) {
        self.wrappee = wrappee
    }

    public var texture: UnsafeMutableRawPointer {
        return spine_texture_region_get_texture(wrappee)
    }

    public func setTexture(texture: UnsafeMutableRawPointer) {
        spine_texture_region_set_texture(wrappee, texture)
    }

    public var u: Float {
        return spine_texture_region_get_u(wrappee)
    }

    public func setU(u: Float) {
        spine_texture_region_set_u(wrappee, u)
    }

    public var v: Float {
        return spine_texture_region_get_v(wrappee)
    }

    public func setV(v: Float) {
        spine_texture_region_set_v(wrappee, v)
    }

    public var u2: Float {
        return spine_texture_region_get_u2(wrappee)
    }

    public func setU2(u2: Float) {
        spine_texture_region_set_u2(wrappee, u2)
    }

    public var v2: Float {
        return spine_texture_region_get_v2(wrappee)
    }

    public func setV2(v2: Float) {
        spine_texture_region_set_v2(wrappee, v2)
    }

    public var degrees: Int32 {
        return spine_texture_region_get_degrees(wrappee)
    }

    public func setDegrees(degrees: Int32) {
        spine_texture_region_set_degrees(wrappee, degrees)
    }

    public var offsetX: Float {
        return spine_texture_region_get_offset_x(wrappee)
    }

    public func setOffsetX(offsetX: Float) {
        spine_texture_region_set_offset_x(wrappee, offsetX)
    }

    public var offsetY: Float {
        return spine_texture_region_get_offset_y(wrappee)
    }

    public func setOffsetY(offsetY: Float) {
        spine_texture_region_set_offset_y(wrappee, offsetY)
    }

    public var width: Int32 {
        return spine_texture_region_get_width(wrappee)
    }

    public func setWidth(width: Int32) {
        spine_texture_region_set_width(wrappee, width)
    }

    public var height: Int32 {
        return spine_texture_region_get_height(wrappee)
    }

    public func setHeight(height: Int32) {
        spine_texture_region_set_height(wrappee, height)
    }

    public var originalWidth: Int32 {
        return spine_texture_region_get_original_width(wrappee)
    }

    public func setOriginalWidth(originalWidth: Int32) {
        spine_texture_region_set_original_width(wrappee, originalWidth)
    }

    public var originalHeight: Int32 {
        return spine_texture_region_get_original_height(wrappee)
    }

    public func setOriginalHeight(originalHeight: Int32) {
        spine_texture_region_set_original_height(wrappee, originalHeight)
    }

}

public final class SpineRenderCommand {

    internal let wrappee: spine_render_command

    internal init(_ wrappee: spine_render_command) {
        self.wrappee = wrappee
    }

    public var positions: Float? {
        return spine_render_command_get_positions(wrappee).flatMap { $0.pointee }
    }

    public var uvs: Float? {
        return spine_render_command_get_uvs(wrappee).flatMap { $0.pointee }
    }

    public var colors: Int32? {
        return spine_render_command_get_colors(wrappee).flatMap { $0.pointee }
    }

    public var indices: [UInt16] {
        let num = Int(spine_render_command_get_num_indices(wrappee))
        let ptr = spine_render_command_get_indices(wrappee)
        return (0..<num).compactMap {
            ptr?[$0]
        }
    }

    public var atlasPage: Int32 {
        return spine_render_command_get_atlas_page(wrappee)
    }

    public var blendMode: SpineBlendMode {
        return .init(spine_render_command_get_blend_mode(wrappee).rawValue)
    }

    public var next: SpineRenderCommand {
        return .init(spine_render_command_get_next(wrappee))
    }

}

public final class SpineSkeletonData {

    internal let wrappee: spine_skeleton_data

    internal init(_ wrappee: spine_skeleton_data) {
        self.wrappee = wrappee
    }

    public func findBone(name: String?) -> SpineBoneData {
        return .init(spine_skeleton_data_find_bone(wrappee, name))
    }

    public func findSlot(name: String?) -> SpineSlotData {
        return .init(spine_skeleton_data_find_slot(wrappee, name))
    }

    public func findSkin(name: String?) -> SpineSkin {
        return .init(spine_skeleton_data_find_skin(wrappee, name))
    }

    public func findEvent(name: String?) -> SpineEventData {
        return .init(spine_skeleton_data_find_event(wrappee, name))
    }

    public func findAnimation(name: String?) -> SpineAnimation {
        return .init(spine_skeleton_data_find_animation(wrappee, name))
    }

    public func findIkConstraint(name: String?) -> SpineIkConstraintData {
        return .init(spine_skeleton_data_find_ik_constraint(wrappee, name))
    }

    public func findTransformConstraint(name: String?) -> SpineTransformConstraintData {
        return .init(spine_skeleton_data_find_transform_constraint(wrappee, name))
    }

    public func findPathConstraint(name: String?) -> SpinePathConstraintData {
        return .init(spine_skeleton_data_find_path_constraint(wrappee, name))
    }

    public func findPhysicsConstraint(name: String?) -> SpinePhysicsConstraintData {
        return .init(spine_skeleton_data_find_physics_constraint(wrappee, name))
    }

    public var name: String? {
        return spine_skeleton_data_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var bones: [SpineBoneData] {
        let num = Int(spine_skeleton_data_get_num_bones(wrappee))
        let ptr = spine_skeleton_data_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var slots: [SpineSlotData] {
        let num = Int(spine_skeleton_data_get_num_slots(wrappee))
        let ptr = spine_skeleton_data_get_slots(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var skins: [SpineSkin] {
        let num = Int(spine_skeleton_data_get_num_skins(wrappee))
        let ptr = spine_skeleton_data_get_skins(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var defaultSkin: SpineSkin {
        return .init(spine_skeleton_data_get_default_skin(wrappee))
    }

    public func setDefaultSkin(skin: SpineSkin) {
        spine_skeleton_data_set_default_skin(wrappee, skin.wrappee)
    }

    public var events: [SpineEventData] {
        let num = Int(spine_skeleton_data_get_num_events(wrappee))
        let ptr = spine_skeleton_data_get_events(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var animations: [SpineAnimation] {
        let num = Int(spine_skeleton_data_get_num_animations(wrappee))
        let ptr = spine_skeleton_data_get_animations(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var ikConstraints: [SpineIkConstraintData] {
        let num = Int(spine_skeleton_data_get_num_ik_constraints(wrappee))
        let ptr = spine_skeleton_data_get_ik_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var transformConstraints: [SpineTransformConstraintData] {
        let num = Int(spine_skeleton_data_get_num_transform_constraints(wrappee))
        let ptr = spine_skeleton_data_get_transform_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var pathConstraints: [SpinePathConstraintData] {
        let num = Int(spine_skeleton_data_get_num_path_constraints(wrappee))
        let ptr = spine_skeleton_data_get_path_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var physicsConstraints: [SpinePhysicsConstraintData] {
        let num = Int(spine_skeleton_data_get_num_physics_constraints(wrappee))
        let ptr = spine_skeleton_data_get_physics_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var x: Float {
        return spine_skeleton_data_get_x(wrappee)
    }

    public func setX(x: Float) {
        spine_skeleton_data_set_x(wrappee, x)
    }

    public var y: Float {
        return spine_skeleton_data_get_y(wrappee)
    }

    public func setY(y: Float) {
        spine_skeleton_data_set_y(wrappee, y)
    }

    public var width: Float {
        return spine_skeleton_data_get_width(wrappee)
    }

    public func setWidth(width: Float) {
        spine_skeleton_data_set_width(wrappee, width)
    }

    public var height: Float {
        return spine_skeleton_data_get_height(wrappee)
    }

    public func setHeight(height: Float) {
        spine_skeleton_data_set_height(wrappee, height)
    }

    public var version: String? {
        return spine_skeleton_data_get_version(wrappee).flatMap { String(cString: $0) }
    }

    public var hash: String? {
        return spine_skeleton_data_get_hash(wrappee).flatMap { String(cString: $0) }
    }

    public var imagesPath: String? {
        return spine_skeleton_data_get_images_path(wrappee).flatMap { String(cString: $0) }
    }

    public var audioPath: String? {
        return spine_skeleton_data_get_audio_path(wrappee).flatMap { String(cString: $0) }
    }

    public var fps: Float {
        return spine_skeleton_data_get_fps(wrappee)
    }

    public var referenceScale: Float {
        return spine_skeleton_data_get_reference_scale(wrappee)
    }

    public func dispose() {
        spine_skeleton_data_dispose(wrappee)
    }

}

public final class SpineIkConstraint {

    internal let wrappee: spine_ik_constraint

    internal init(_ wrappee: spine_ik_constraint) {
        self.wrappee = wrappee
    }

    public func update() {
        spine_ik_constraint_update(wrappee)
    }

    public var order: Int32 {
        return spine_ik_constraint_get_order(wrappee)
    }

    public var data: SpineIkConstraintData {
        return .init(spine_ik_constraint_get_data(wrappee))
    }

    public var bones: [SpineBone] {
        let num = Int(spine_ik_constraint_get_num_bones(wrappee))
        let ptr = spine_ik_constraint_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var target: SpineBone {
        return .init(spine_ik_constraint_get_target(wrappee))
    }

    public func setTarget(target: SpineBone) {
        spine_ik_constraint_set_target(wrappee, target.wrappee)
    }

    public var bendDirection: Int32 {
        return spine_ik_constraint_get_bend_direction(wrappee)
    }

    public func setBendDirection(bendDirection: Int32) {
        spine_ik_constraint_set_bend_direction(wrappee, bendDirection)
    }

    public var compress: Int32 {
        return spine_ik_constraint_get_compress(wrappee)
    }

    public func setCompress(compress: Int32) {
        spine_ik_constraint_set_compress(wrappee, compress)
    }

    public var stretch: Int32 {
        return spine_ik_constraint_get_stretch(wrappee)
    }

    public func setStretch(stretch: Int32) {
        spine_ik_constraint_set_stretch(wrappee, stretch)
    }

    public var mix: Float {
        return spine_ik_constraint_get_mix(wrappee)
    }

    public func setMix(mix: Float) {
        spine_ik_constraint_set_mix(wrappee, mix)
    }

    public var softness: Float {
        return spine_ik_constraint_get_softness(wrappee)
    }

    public func setSoftness(softness: Float) {
        spine_ik_constraint_set_softness(wrappee, softness)
    }

    public var isActive: Int32 {
        return spine_ik_constraint_get_is_active(wrappee)
    }

    public func setIsActive(isActive: Int32) {
        spine_ik_constraint_set_is_active(wrappee, isActive)
    }

}

public final class SpineSkinEntries {

    internal let wrappee: spine_skin_entries

    internal init(_ wrappee: spine_skin_entries) {
        self.wrappee = wrappee
    }

    public func getEntry(index: Int32) -> SpineSkinEntry {
        return .init(spine_skin_entries_get_entry(wrappee, index))
    }

    public func dispose() {
        spine_skin_entries_dispose(wrappee)
    }

}

public final class SpineTrackEntry {

    internal let wrappee: spine_track_entry

    internal init(_ wrappee: spine_track_entry) {
        self.wrappee = wrappee
    }

    public var trackIndex: Int32 {
        return spine_track_entry_get_track_index(wrappee)
    }

    public var animation: SpineAnimation {
        return .init(spine_track_entry_get_animation(wrappee))
    }

    public var previous: SpineTrackEntry {
        return .init(spine_track_entry_get_previous(wrappee))
    }

    public var loop: Int32 {
        return spine_track_entry_get_loop(wrappee)
    }

    public func setLoop(loop: Int32) {
        spine_track_entry_set_loop(wrappee, loop)
    }

    public var holdPrevious: Int32 {
        return spine_track_entry_get_hold_previous(wrappee)
    }

    public func setHoldPrevious(holdPrevious: Int32) {
        spine_track_entry_set_hold_previous(wrappee, holdPrevious)
    }

    public var reverse: Int32 {
        return spine_track_entry_get_reverse(wrappee)
    }

    public func setReverse(reverse: Int32) {
        spine_track_entry_set_reverse(wrappee, reverse)
    }

    public var shortestRotation: Int32 {
        return spine_track_entry_get_shortest_rotation(wrappee)
    }

    public func setShortestRotation(shortestRotation: Int32) {
        spine_track_entry_set_shortest_rotation(wrappee, shortestRotation)
    }

    public var delay: Float {
        return spine_track_entry_get_delay(wrappee)
    }

    public func setDelay(delay: Float) {
        spine_track_entry_set_delay(wrappee, delay)
    }

    public var trackTime: Float {
        return spine_track_entry_get_track_time(wrappee)
    }

    public func setTrackTime(trackTime: Float) {
        spine_track_entry_set_track_time(wrappee, trackTime)
    }

    public var trackEnd: Float {
        return spine_track_entry_get_track_end(wrappee)
    }

    public func setTrackEnd(trackEnd: Float) {
        spine_track_entry_set_track_end(wrappee, trackEnd)
    }

    public var animationStart: Float {
        return spine_track_entry_get_animation_start(wrappee)
    }

    public func setAnimationStart(animationStart: Float) {
        spine_track_entry_set_animation_start(wrappee, animationStart)
    }

    public var animationEnd: Float {
        return spine_track_entry_get_animation_end(wrappee)
    }

    public func setAnimationEnd(animationEnd: Float) {
        spine_track_entry_set_animation_end(wrappee, animationEnd)
    }

    public var animationLast: Float {
        return spine_track_entry_get_animation_last(wrappee)
    }

    public func setAnimationLast(animationLast: Float) {
        spine_track_entry_set_animation_last(wrappee, animationLast)
    }

    public var animationTime: Float {
        return spine_track_entry_get_animation_time(wrappee)
    }

    public var timeScale: Float {
        return spine_track_entry_get_time_scale(wrappee)
    }

    public func setTimeScale(timeScale: Float) {
        spine_track_entry_set_time_scale(wrappee, timeScale)
    }

    public var alpha: Float {
        return spine_track_entry_get_alpha(wrappee)
    }

    public func setAlpha(alpha: Float) {
        spine_track_entry_set_alpha(wrappee, alpha)
    }

    public var eventThreshold: Float {
        return spine_track_entry_get_event_threshold(wrappee)
    }

    public func setEventThreshold(eventThreshold: Float) {
        spine_track_entry_set_event_threshold(wrappee, eventThreshold)
    }

    public var alphaAttachmentThreshold: Float {
        return spine_track_entry_get_alpha_attachment_threshold(wrappee)
    }

    public func setAlphaAttachmentThreshold(attachmentThreshold: Float) {
        spine_track_entry_set_alpha_attachment_threshold(wrappee, attachmentThreshold)
    }

    public var mixAttachmentThreshold: Float {
        return spine_track_entry_get_mix_attachment_threshold(wrappee)
    }

    public func setMixAttachmentThreshold(attachmentThreshold: Float) {
        spine_track_entry_set_mix_attachment_threshold(wrappee, attachmentThreshold)
    }

    public var mixDrawOrderThreshold: Float {
        return spine_track_entry_get_mix_draw_order_threshold(wrappee)
    }

    public func setMixDrawOrderThreshold(drawOrderThreshold: Float) {
        spine_track_entry_set_mix_draw_order_threshold(wrappee, drawOrderThreshold)
    }

    public var next: SpineTrackEntry {
        return .init(spine_track_entry_get_next(wrappee))
    }

    public func isComplete() -> Int32 {
        return spine_track_entry_is_complete(wrappee)
    }

    public var mixTime: Float {
        return spine_track_entry_get_mix_time(wrappee)
    }

    public func setMixTime(mixTime: Float) {
        spine_track_entry_set_mix_time(wrappee, mixTime)
    }

    public var mixDuration: Float {
        return spine_track_entry_get_mix_duration(wrappee)
    }

    public func setMixDuration(mixDuration: Float) {
        spine_track_entry_set_mix_duration(wrappee, mixDuration)
    }

    public var mixBlend: SpineMixBlend {
        return .init(spine_track_entry_get_mix_blend(wrappee).rawValue)
    }

    public func setMixBlend(mixBlend: SpineMixBlend) {
        spine_track_entry_set_mix_blend(wrappee, mixBlend)
    }

    public var mixingFrom: SpineTrackEntry {
        return .init(spine_track_entry_get_mixing_from(wrappee))
    }

    public var mixingTo: SpineTrackEntry {
        return .init(spine_track_entry_get_mixing_to(wrappee))
    }

    public func resetRotationDirections() {
        spine_track_entry_reset_rotation_directions(wrappee)
    }

    public var trackComplete: Float {
        return spine_track_entry_get_track_complete(wrappee)
    }

}

public final class SpineAttachment {

    internal let wrappee: spine_attachment

    internal init(_ wrappee: spine_attachment) {
        self.wrappee = wrappee
    }

    public var name: String? {
        return spine_attachment_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var type: SpineAttachmentType {
        return .init(spine_attachment_get_type(wrappee).rawValue)
    }

    public func copy() -> SpineAttachment {
        return .init(spine_attachment_copy(wrappee))
    }

    public func dispose() {
        spine_attachment_dispose(wrappee)
    }

}

public final class SpineConstraint {

    internal let wrappee: spine_constraint

    internal init(_ wrappee: spine_constraint) {
        self.wrappee = wrappee
    }

}

public final class SpineEventData {

    internal let wrappee: spine_event_data

    internal init(_ wrappee: spine_event_data) {
        self.wrappee = wrappee
    }

    public var name: String? {
        return spine_event_data_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var intValue: Int32 {
        return spine_event_data_get_int_value(wrappee)
    }

    public func setIntValue(value: Int32) {
        spine_event_data_set_int_value(wrappee, value)
    }

    public var floatValue: Float {
        return spine_event_data_get_float_value(wrappee)
    }

    public func setFloatValue(value: Float) {
        spine_event_data_set_float_value(wrappee, value)
    }

    public var stringValue: String? {
        return spine_event_data_get_string_value(wrappee).flatMap { String(cString: $0) }
    }

    public func setStringValue(value: String?) {
        spine_event_data_set_string_value(wrappee, value)
    }

    public var audioPath: String? {
        return spine_event_data_get_audio_path(wrappee).flatMap { String(cString: $0) }
    }

    public var volume: Float {
        return spine_event_data_get_volume(wrappee)
    }

    public func setVolume(volume: Float) {
        spine_event_data_set_volume(wrappee, volume)
    }

    public var balance: Float {
        return spine_event_data_get_balance(wrappee)
    }

    public func setBalance(balance: Float) {
        spine_event_data_set_balance(wrappee, balance)
    }

}

public final class SpineSkinEntry {

    internal let wrappee: spine_skin_entry

    internal init(_ wrappee: spine_skin_entry) {
        self.wrappee = wrappee
    }

    public var slotIndex: Int32 {
        return spine_skin_entry_get_slot_index(wrappee)
    }

    public var name: String? {
        return spine_skin_entry_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var attachment: SpineAttachment {
        return .init(spine_skin_entry_get_attachment(wrappee))
    }

}

public final class SpineBoneData {

    internal let wrappee: spine_bone_data

    internal init(_ wrappee: spine_bone_data) {
        self.wrappee = wrappee
    }

    public var index: Int32 {
        return spine_bone_data_get_index(wrappee)
    }

    public var name: String? {
        return spine_bone_data_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var parent: SpineBoneData {
        return .init(spine_bone_data_get_parent(wrappee))
    }

    public var length: Float {
        return spine_bone_data_get_length(wrappee)
    }

    public func setLength(length: Float) {
        spine_bone_data_set_length(wrappee, length)
    }

    public var x: Float {
        return spine_bone_data_get_x(wrappee)
    }

    public func setX(x: Float) {
        spine_bone_data_set_x(wrappee, x)
    }

    public var y: Float {
        return spine_bone_data_get_y(wrappee)
    }

    public func setY(y: Float) {
        spine_bone_data_set_y(wrappee, y)
    }

    public var rotation: Float {
        return spine_bone_data_get_rotation(wrappee)
    }

    public func setRotation(rotation: Float) {
        spine_bone_data_set_rotation(wrappee, rotation)
    }

    public var scaleX: Float {
        return spine_bone_data_get_scale_x(wrappee)
    }

    public func setScaleX(scaleX: Float) {
        spine_bone_data_set_scale_x(wrappee, scaleX)
    }

    public var scaleY: Float {
        return spine_bone_data_get_scale_y(wrappee)
    }

    public func setScaleY(scaleY: Float) {
        spine_bone_data_set_scale_y(wrappee, scaleY)
    }

    public var shearX: Float {
        return spine_bone_data_get_shear_x(wrappee)
    }

    public func setShearX(shearx: Float) {
        spine_bone_data_set_shear_x(wrappee, shearx)
    }

    public var shearY: Float {
        return spine_bone_data_get_shear_y(wrappee)
    }

    public func setShearY(shearY: Float) {
        spine_bone_data_set_shear_y(wrappee, shearY)
    }

    public var inherit: SpineInherit {
        return .init(spine_bone_data_get_inherit(wrappee).rawValue)
    }

    public func setInherit(inherit: SpineInherit) {
        spine_bone_data_set_inherit(wrappee, inherit)
    }

    public func isSkinRequired() -> Int32 {
        return spine_bone_data_is_skin_required(wrappee)
    }

    public func setIsSkinRequired(isSkinRequired: Int32) {
        spine_bone_data_set_is_skin_required(wrappee, isSkinRequired)
    }

    public var color: SpineColor {
        return .init(spine_bone_data_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_bone_data_set_color(wrappee, r, g, b, a)
    }

    public func isVisible() -> Int32 {
        return spine_bone_data_is_visible(wrappee)
    }

    public func setVisible(isVisible: Int32) {
        spine_bone_data_set_visible(wrappee, isVisible)
    }

}

public final class SpineSlotData {

    internal let wrappee: spine_slot_data

    internal init(_ wrappee: spine_slot_data) {
        self.wrappee = wrappee
    }

    public var index: Int32 {
        return spine_slot_data_get_index(wrappee)
    }

    public var name: String? {
        return spine_slot_data_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var boneData: SpineBoneData {
        return .init(spine_slot_data_get_bone_data(wrappee))
    }

    public var color: SpineColor {
        return .init(spine_slot_data_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_data_set_color(wrappee, r, g, b, a)
    }

    public var darkColor: SpineColor {
        return .init(spine_slot_data_get_dark_color(wrappee))
    }

    public func setDarkColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_data_set_dark_color(wrappee, r, g, b, a)
    }

    public func hasDarkColor() -> Int32 {
        return spine_slot_data_has_dark_color(wrappee)
    }

    public func setHasDarkColor(hasDarkColor: Int32) {
        spine_slot_data_set_has_dark_color(wrappee, hasDarkColor)
    }

    public var attachmentName: String? {
        return spine_slot_data_get_attachment_name(wrappee).flatMap { String(cString: $0) }
    }

    public func setAttachmentName(attachmentName: String?) {
        spine_slot_data_set_attachment_name(wrappee, attachmentName)
    }

    public var blendMode: SpineBlendMode {
        return .init(spine_slot_data_get_blend_mode(wrappee).rawValue)
    }

    public func setBlendMode(blendMode: SpineBlendMode) {
        spine_slot_data_set_blend_mode(wrappee, blendMode)
    }

    public func isVisible() -> Int32 {
        return spine_slot_data_is_visible(wrappee)
    }

    public func setVisible(visible: Int32) {
        spine_slot_data_set_visible(wrappee, visible)
    }

}

public final class SpineAnimation {

    internal let wrappee: spine_animation

    internal init(_ wrappee: spine_animation) {
        self.wrappee = wrappee
    }

    public var name: String? {
        return spine_animation_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public var duration: Float {
        return spine_animation_get_duration(wrappee)
    }

}

public final class SpineSkeleton {

    internal let wrappee: spine_skeleton

    internal init(_ wrappee: spine_skeleton) {
        self.wrappee = wrappee
    }

    public func updateCache() {
        spine_skeleton_update_cache(wrappee)
    }

    public func updateWorldTransform(physics: SpinePhysics) {
        spine_skeleton_update_world_transform(wrappee, physics)
    }

    public func updateWorldTransformBone(physics: SpinePhysics, parent: SpineBone) {
        spine_skeleton_update_world_transform_bone(wrappee, physics, parent.wrappee)
    }

    public func setToSetupPose() {
        spine_skeleton_set_to_setup_pose(wrappee)
    }

    public func setBonesToSetupPose() {
        spine_skeleton_set_bones_to_setup_pose(wrappee)
    }

    public func setSlotsToSetupPose() {
        spine_skeleton_set_slots_to_setup_pose(wrappee)
    }

    public func findBone(boneName: String?) -> SpineBone {
        return .init(spine_skeleton_find_bone(wrappee, boneName))
    }

    public func findSlot(slotName: String?) -> SpineSlot {
        return .init(spine_skeleton_find_slot(wrappee, slotName))
    }

    public func setSkinByName(skinName: String?) {
        spine_skeleton_set_skin_by_name(wrappee, skinName)
    }

    public func setSkin(skin: SpineSkin) {
        spine_skeleton_set_skin(wrappee, skin.wrappee)
    }

    public func getAttachmentByName(slotName: String?, attachmentName: String?) -> SpineAttachment {
        return .init(spine_skeleton_get_attachment_by_name(wrappee, slotName, attachmentName))
    }

    public func getAttachment(slotIndex: Int32, attachmentName: String?) -> SpineAttachment {
        return .init(spine_skeleton_get_attachment(wrappee, slotIndex, attachmentName))
    }

    public func setAttachment(slotName: String?, attachmentName: String?) {
        spine_skeleton_set_attachment(wrappee, slotName, attachmentName)
    }

    public func findIkConstraint(constraintName: String?) -> SpineIkConstraint {
        return .init(spine_skeleton_find_ik_constraint(wrappee, constraintName))
    }

    public func findTransformConstraint(constraintName: String?) -> SpineTransformConstraint {
        return .init(spine_skeleton_find_transform_constraint(wrappee, constraintName))
    }

    public func findPathConstraint(constraintName: String?) -> SpinePathConstraint {
        return .init(spine_skeleton_find_path_constraint(wrappee, constraintName))
    }

    public func findPhysicsConstraint(constraintName: String?) -> SpinePhysicsConstraint {
        return .init(spine_skeleton_find_physics_constraint(wrappee, constraintName))
    }

    public var bounds: SpineBounds {
        return .init(spine_skeleton_get_bounds(wrappee))
    }

    public var rootBone: SpineBone {
        return .init(spine_skeleton_get_root_bone(wrappee))
    }

    public var data: SpineSkeletonData {
        return .init(spine_skeleton_get_data(wrappee))
    }

    public var bones: [SpineBone] {
        let num = Int(spine_skeleton_get_num_bones(wrappee))
        let ptr = spine_skeleton_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var slots: [SpineSlot] {
        let num = Int(spine_skeleton_get_num_slots(wrappee))
        let ptr = spine_skeleton_get_slots(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var drawOrder: [SpineSlot] {
        let num = Int(spine_skeleton_get_num_draw_order(wrappee))
        let ptr = spine_skeleton_get_draw_order(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var ikConstraints: [SpineIkConstraint] {
        let num = Int(spine_skeleton_get_num_ik_constraints(wrappee))
        let ptr = spine_skeleton_get_ik_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var transformConstraints: [SpineTransformConstraint] {
        let num = Int(spine_skeleton_get_num_transform_constraints(wrappee))
        let ptr = spine_skeleton_get_transform_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var pathConstraints: [SpinePathConstraint] {
        let num = Int(spine_skeleton_get_num_path_constraints(wrappee))
        let ptr = spine_skeleton_get_path_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var physicsConstraints: [SpinePhysicsConstraint] {
        let num = Int(spine_skeleton_get_num_physics_constraints(wrappee))
        let ptr = spine_skeleton_get_physics_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var skin: SpineSkin {
        return .init(spine_skeleton_get_skin(wrappee))
    }

    public var color: SpineColor {
        return .init(spine_skeleton_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_skeleton_set_color(wrappee, r, g, b, a)
    }

    public func setPosition(x: Float, y: Float) {
        spine_skeleton_set_position(wrappee, x, y)
    }

    public var x: Float {
        return spine_skeleton_get_x(wrappee)
    }

    public func setX(x: Float) {
        spine_skeleton_set_x(wrappee, x)
    }

    public var y: Float {
        return spine_skeleton_get_y(wrappee)
    }

    public func setY(y: Float) {
        spine_skeleton_set_y(wrappee, y)
    }

    public var scaleX: Float {
        return spine_skeleton_get_scale_x(wrappee)
    }

    public func setScaleX(scaleX: Float) {
        spine_skeleton_set_scale_x(wrappee, scaleX)
    }

    public var scaleY: Float {
        return spine_skeleton_get_scale_y(wrappee)
    }

    public func setScaleY(scaleY: Float) {
        spine_skeleton_set_scale_y(wrappee, scaleY)
    }

    public var time: Float {
        return spine_skeleton_get_time(wrappee)
    }

    public func setTime(time: Float) {
        spine_skeleton_set_time(wrappee, time)
    }

    public func update(delta: Float) {
        spine_skeleton_update(wrappee, delta)
    }

}

public final class SpineSequence {

    internal let wrappee: spine_sequence

    internal init(_ wrappee: spine_sequence) {
        self.wrappee = wrappee
    }

    public func apply(slot: SpineSlot, attachment: SpineAttachment) {
        spine_sequence_apply(wrappee, slot.wrappee, attachment.wrappee)
    }

    public func getPath(basePath: String?, index: Int32) -> String? {
        return spine_sequence_get_path(wrappee, basePath, index).flatMap { String(cString: $0) }
    }

    public var id: Int32 {
        return spine_sequence_get_id(wrappee)
    }

    public func setId(id: Int32) {
        spine_sequence_set_id(wrappee, id)
    }

    public var start: Int32 {
        return spine_sequence_get_start(wrappee)
    }

    public func setStart(start: Int32) {
        spine_sequence_set_start(wrappee, start)
    }

    public var digits: Int32 {
        return spine_sequence_get_digits(wrappee)
    }

    public func setDigits(digits: Int32) {
        spine_sequence_set_digits(wrappee, digits)
    }

    public var setupIndex: Int32 {
        return spine_sequence_get_setup_index(wrappee)
    }

    public func setSetupIndex(setupIndex: Int32) {
        spine_sequence_set_setup_index(wrappee, setupIndex)
    }

    public var regions: [SpineTextureRegion] {
        let num = Int(spine_sequence_get_num_regions(wrappee))
        let ptr = spine_sequence_get_regions(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

}

public final class SpineBounds {

    internal let wrappee: spine_bounds

    internal init(_ wrappee: spine_bounds) {
        self.wrappee = wrappee
    }

    public var x: Float {
        return spine_bounds_get_x(wrappee)
    }

    public var y: Float {
        return spine_bounds_get_y(wrappee)
    }

    public var width: Float {
        return spine_bounds_get_width(wrappee)
    }

    public var height: Float {
        return spine_bounds_get_height(wrappee)
    }

}

public final class SpineVector {

    internal let wrappee: spine_vector

    internal init(_ wrappee: spine_vector) {
        self.wrappee = wrappee
    }

    public var x: Float {
        return spine_vector_get_x(wrappee)
    }

    public var y: Float {
        return spine_vector_get_y(wrappee)
    }

}

public final class SpineEvent {

    internal let wrappee: spine_event

    internal init(_ wrappee: spine_event) {
        self.wrappee = wrappee
    }

    public var data: SpineEventData {
        return .init(spine_event_get_data(wrappee))
    }

    public var time: Float {
        return spine_event_get_time(wrappee)
    }

    public var intValue: Int32 {
        return spine_event_get_int_value(wrappee)
    }

    public func setIntValue(value: Int32) {
        spine_event_set_int_value(wrappee, value)
    }

    public var floatValue: Float {
        return spine_event_get_float_value(wrappee)
    }

    public func setFloatValue(value: Float) {
        spine_event_set_float_value(wrappee, value)
    }

    public var stringValue: String? {
        return spine_event_get_string_value(wrappee).flatMap { String(cString: $0) }
    }

    public func setStringValue(value: String?) {
        spine_event_set_string_value(wrappee, value)
    }

    public var volume: Float {
        return spine_event_get_volume(wrappee)
    }

    public func setVolume(volume: Float) {
        spine_event_set_volume(wrappee, volume)
    }

    public var balance: Float {
        return spine_event_get_balance(wrappee)
    }

    public func setBalance(balance: Float) {
        spine_event_set_balance(wrappee, balance)
    }

}

public final class SpineAtlas {

    internal let wrappee: spine_atlas

    internal init(_ wrappee: spine_atlas) {
        self.wrappee = wrappee
    }

    public func load(atlasData: String?) -> SpineAtlas {
        return .init(spine_atlas_load(atlasData))
    }

    public func getImagePath(index: Int32) -> String? {
        return spine_atlas_get_image_path(wrappee, index).flatMap { String(cString: $0) }
    }

    public var error: String? {
        return spine_atlas_get_error(wrappee).flatMap { String(cString: $0) }
    }

    public func dispose() {
        spine_atlas_dispose(wrappee)
    }

}

public final class SpineColor {

    internal let wrappee: spine_color

    internal init(_ wrappee: spine_color) {
        self.wrappee = wrappee
    }

    public var r: Float {
        return spine_color_get_r(wrappee)
    }

    public var g: Float {
        return spine_color_get_g(wrappee)
    }

    public var b: Float {
        return spine_color_get_b(wrappee)
    }

    public var a: Float {
        return spine_color_get_a(wrappee)
    }

}

public final class SpineBone {

    internal let wrappee: spine_bone

    internal init(_ wrappee: spine_bone) {
        self.wrappee = wrappee
    }

    public func setIsYDown(yDown: Int32) {
        spine_bone_set_is_y_down(yDown)
    }

    public var isYDown: Int32 {
        return spine_bone_get_is_y_down()
    }

    public func update() {
        spine_bone_update(wrappee)
    }

    public func updateWorldTransform() {
        spine_bone_update_world_transform(wrappee)
    }

    public func updateWorldTransformWith(x: Float, y: Float, rotation: Float, scaleX: Float, scaleY: Float, shearX: Float, shearY: Float) {
        spine_bone_update_world_transform_with(wrappee, x, y, rotation, scaleX, scaleY, shearX, shearY)
    }

    public func updateAppliedTransform() {
        spine_bone_update_applied_transform(wrappee)
    }

    public func setToSetupPose() {
        spine_bone_set_to_setup_pose(wrappee)
    }

    public func worldToLocal(worldX: Float, worldY: Float) -> SpineVector {
        return .init(spine_bone_world_to_local(wrappee, worldX, worldY))
    }

    public func worldToParent(worldX: Float, worldY: Float) -> SpineVector {
        return .init(spine_bone_world_to_parent(wrappee, worldX, worldY))
    }

    public func localToWorld(localX: Float, localY: Float) -> SpineVector {
        return .init(spine_bone_local_to_world(wrappee, localX, localY))
    }

    public func parentToWorld(localX: Float, localY: Float) -> SpineVector {
        return .init(spine_bone_parent_to_world(wrappee, localX, localY))
    }

    public func worldToLocalRotation(worldRotation: Float) -> Float {
        return spine_bone_world_to_local_rotation(wrappee, worldRotation)
    }

    public func localToWorldRotation(localRotation: Float) -> Float {
        return spine_bone_local_to_world_rotation(wrappee, localRotation)
    }

    public func rotateWorld(degrees: Float) {
        spine_bone_rotate_world(wrappee, degrees)
    }

    public var worldToLocalRotationX: Float {
        return spine_bone_get_world_to_local_rotation_x(wrappee)
    }

    public var worldToLocalRotationY: Float {
        return spine_bone_get_world_to_local_rotation_y(wrappee)
    }

    public var data: SpineBoneData {
        return .init(spine_bone_get_data(wrappee))
    }

    public var skeleton: SpineSkeleton {
        return .init(spine_bone_get_skeleton(wrappee))
    }

    public var parent: SpineBone {
        return .init(spine_bone_get_parent(wrappee))
    }

    public var children: [SpineBone] {
        let num = Int(spine_bone_get_num_children(wrappee))
        let ptr = spine_bone_get_children(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var x: Float {
        return spine_bone_get_x(wrappee)
    }

    public func setX(x: Float) {
        spine_bone_set_x(wrappee, x)
    }

    public var y: Float {
        return spine_bone_get_y(wrappee)
    }

    public func setY(y: Float) {
        spine_bone_set_y(wrappee, y)
    }

    public var rotation: Float {
        return spine_bone_get_rotation(wrappee)
    }

    public func setRotation(rotation: Float) {
        spine_bone_set_rotation(wrappee, rotation)
    }

    public var scaleX: Float {
        return spine_bone_get_scale_x(wrappee)
    }

    public func setScaleX(scaleX: Float) {
        spine_bone_set_scale_x(wrappee, scaleX)
    }

    public var scaleY: Float {
        return spine_bone_get_scale_y(wrappee)
    }

    public func setScaleY(scaleY: Float) {
        spine_bone_set_scale_y(wrappee, scaleY)
    }

    public var shearX: Float {
        return spine_bone_get_shear_x(wrappee)
    }

    public func setShearX(shearX: Float) {
        spine_bone_set_shear_x(wrappee, shearX)
    }

    public var shearY: Float {
        return spine_bone_get_shear_y(wrappee)
    }

    public func setShearY(shearY: Float) {
        spine_bone_set_shear_y(wrappee, shearY)
    }

    public var appliedRotation: Float {
        return spine_bone_get_applied_rotation(wrappee)
    }

    public func setAppliedRotation(rotation: Float) {
        spine_bone_set_applied_rotation(wrappee, rotation)
    }

    public var aX: Float {
        return spine_bone_get_a_x(wrappee)
    }

    public func setAX(x: Float) {
        spine_bone_set_a_x(wrappee, x)
    }

    public var aY: Float {
        return spine_bone_get_a_y(wrappee)
    }

    public func setAY(y: Float) {
        spine_bone_set_a_y(wrappee, y)
    }

    public var aScaleX: Float {
        return spine_bone_get_a_scale_x(wrappee)
    }

    public func setAScaleX(scaleX: Float) {
        spine_bone_set_a_scale_x(wrappee, scaleX)
    }

    public var aScaleY: Float {
        return spine_bone_get_a_scale_y(wrappee)
    }

    public func setAScaleY(scaleY: Float) {
        spine_bone_set_a_scale_y(wrappee, scaleY)
    }

    public var aShearX: Float {
        return spine_bone_get_a_shear_x(wrappee)
    }

    public func setAShearX(shearX: Float) {
        spine_bone_set_a_shear_x(wrappee, shearX)
    }

    public var aShearY: Float {
        return spine_bone_get_a_shear_y(wrappee)
    }

    public func setAShearY(shearY: Float) {
        spine_bone_set_a_shear_y(wrappee, shearY)
    }

    public var a: Float {
        return spine_bone_get_a(wrappee)
    }

    public func setA(a: Float) {
        spine_bone_set_a(wrappee, a)
    }

    public var b: Float {
        return spine_bone_get_b(wrappee)
    }

    public func setB(b: Float) {
        spine_bone_set_b(wrappee, b)
    }

    public var c: Float {
        return spine_bone_get_c(wrappee)
    }

    public func setC(c: Float) {
        spine_bone_set_c(wrappee, c)
    }

    public var d: Float {
        return spine_bone_get_d(wrappee)
    }

    public func setD(d: Float) {
        spine_bone_set_d(wrappee, d)
    }

    public var worldX: Float {
        return spine_bone_get_world_x(wrappee)
    }

    public func setWorldX(worldX: Float) {
        spine_bone_set_world_x(wrappee, worldX)
    }

    public var worldY: Float {
        return spine_bone_get_world_y(wrappee)
    }

    public func setWorldY(worldY: Float) {
        spine_bone_set_world_y(wrappee, worldY)
    }

    public var worldRotationX: Float {
        return spine_bone_get_world_rotation_x(wrappee)
    }

    public var worldRotationY: Float {
        return spine_bone_get_world_rotation_y(wrappee)
    }

    public var worldScaleX: Float {
        return spine_bone_get_world_scale_x(wrappee)
    }

    public var worldScaleY: Float {
        return spine_bone_get_world_scale_y(wrappee)
    }

    public var isActive: Int32 {
        return spine_bone_get_is_active(wrappee)
    }

    public func setIsActive(isActive: Int32) {
        spine_bone_set_is_active(wrappee, isActive)
    }

    public var inherit: SpineInherit {
        return .init(spine_bone_get_inherit(wrappee).rawValue)
    }

    public func setInherit(inherit: SpineInherit) {
        spine_bone_set_inherit(wrappee, inherit)
    }

}

public final class SpineSlot {

    internal let wrappee: spine_slot

    internal init(_ wrappee: spine_slot) {
        self.wrappee = wrappee
    }

    public func setToSetupPose() {
        spine_slot_set_to_setup_pose(wrappee)
    }

    public var data: SpineSlotData {
        return .init(spine_slot_get_data(wrappee))
    }

    public var bone: SpineBone {
        return .init(spine_slot_get_bone(wrappee))
    }

    public var skeleton: SpineSkeleton {
        return .init(spine_slot_get_skeleton(wrappee))
    }

    public var color: SpineColor {
        return .init(spine_slot_get_color(wrappee))
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_set_color(wrappee, r, g, b, a)
    }

    public var darkColor: SpineColor {
        return .init(spine_slot_get_dark_color(wrappee))
    }

    public func setDarkColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_set_dark_color(wrappee, r, g, b, a)
    }

    public func hasDarkColor() -> Int32 {
        return spine_slot_has_dark_color(wrappee)
    }

    public var attachment: SpineAttachment {
        return .init(spine_slot_get_attachment(wrappee))
    }

    public func setAttachment(attachment: SpineAttachment) {
        spine_slot_set_attachment(wrappee, attachment.wrappee)
    }

    public var sequenceIndex: Int32 {
        return spine_slot_get_sequence_index(wrappee)
    }

    public func setSequenceIndex(sequenceIndex: Int32) {
        spine_slot_set_sequence_index(wrappee, sequenceIndex)
    }

}

public final class SpineSkin {

    internal let wrappee: spine_skin

    internal init(_ wrappee: spine_skin) {
        self.wrappee = wrappee
    }

    public func setAttachment(slotIndex: Int32, name: String?, attachment: SpineAttachment) {
        spine_skin_set_attachment(wrappee, slotIndex, name, attachment.wrappee)
    }

    public func getAttachment(slotIndex: Int32, name: String?) -> SpineAttachment {
        return .init(spine_skin_get_attachment(wrappee, slotIndex, name))
    }

    public func removeAttachment(slotIndex: Int32, name: String?) {
        spine_skin_remove_attachment(wrappee, slotIndex, name)
    }

    public var name: String? {
        return spine_skin_get_name(wrappee).flatMap { String(cString: $0) }
    }

    public func addSkin(other: SpineSkin) {
        spine_skin_add_skin(wrappee, other.wrappee)
    }

    public func copySkin(other: SpineSkin) {
        spine_skin_copy_skin(wrappee, other.wrappee)
    }

    public var entries: SpineSkinEntries {
        return .init(spine_skin_get_entries(wrappee))
    }

    public var bones: [SpineBoneData] {
        let num = Int(spine_skin_get_num_bones(wrappee))
        let ptr = spine_skin_get_bones(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public var constraints: [SpineConstraintData] {
        let num = Int(spine_skin_get_num_constraints(wrappee))
        let ptr = spine_skin_get_constraints(wrappee)
        return (0..<num).compactMap {
            ptr?[$0].flatMap { .init($0) }
        }
    }

    public func create(name: String?) -> SpineSkin {
        return .init(spine_skin_create(name))
    }

    public func dispose() {
        spine_skin_dispose(wrappee)
    }

}

