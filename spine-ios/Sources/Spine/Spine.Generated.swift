import Foundation
import SpineWrapper

public final class SpineTransformConstraintData {

    internal let data: spine_transform_constraint_data

    internal init(data: spine_transform_constraint_data) {
        self.data = data
    }

    public func getNumBones() -> Int32 {
        return spine_transform_constraint_data_get_num_bones(data)
    }

    public func getBones() -> [spine_bone_data] {
        let num = Int(spine_transform_constraint_data_get_num_bones(data))
        let native = spine_transform_constraint_data_get_bones(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getTarget() -> spine_bone_data {
        return spine_transform_constraint_data_get_target(data)
    }

    public func setTarget(target: spine_bone_data) {
        spine_transform_constraint_data_set_target(data, target)
    }

    public func getMixRotate() -> Float {
        return spine_transform_constraint_data_get_mix_rotate(data)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_transform_constraint_data_set_mix_rotate(data, mixRotate)
    }

    public func getMixX() -> Float {
        return spine_transform_constraint_data_get_mix_x(data)
    }

    public func setMixX(mixX: Float) {
        spine_transform_constraint_data_set_mix_x(data, mixX)
    }

    public func getMixY() -> Float {
        return spine_transform_constraint_data_get_mix_y(data)
    }

    public func setMixY(mixY: Float) {
        spine_transform_constraint_data_set_mix_y(data, mixY)
    }

    public func getMixScaleX() -> Float {
        return spine_transform_constraint_data_get_mix_scale_x(data)
    }

    public func setMixScaleX(mixScaleX: Float) {
        spine_transform_constraint_data_set_mix_scale_x(data, mixScaleX)
    }

    public func getMixScaleY() -> Float {
        return spine_transform_constraint_data_get_mix_scale_y(data)
    }

    public func setMixScaleY(mixScaleY: Float) {
        spine_transform_constraint_data_set_mix_scale_y(data, mixScaleY)
    }

    public func getMixShearY() -> Float {
        return spine_transform_constraint_data_get_mix_shear_y(data)
    }

    public func setMixShearY(mixShearY: Float) {
        spine_transform_constraint_data_set_mix_shear_y(data, mixShearY)
    }

    public func getOffsetRotation() -> Float {
        return spine_transform_constraint_data_get_offset_rotation(data)
    }

    public func setOffsetRotation(offsetRotation: Float) {
        spine_transform_constraint_data_set_offset_rotation(data, offsetRotation)
    }

    public func getOffsetX() -> Float {
        return spine_transform_constraint_data_get_offset_x(data)
    }

    public func setOffsetX(offsetX: Float) {
        spine_transform_constraint_data_set_offset_x(data, offsetX)
    }

    public func getOffsetY() -> Float {
        return spine_transform_constraint_data_get_offset_y(data)
    }

    public func setOffsetY(offsetY: Float) {
        spine_transform_constraint_data_set_offset_y(data, offsetY)
    }

    public func getOffsetScaleX() -> Float {
        return spine_transform_constraint_data_get_offset_scale_x(data)
    }

    public func setOffsetScaleX(offsetScaleX: Float) {
        spine_transform_constraint_data_set_offset_scale_x(data, offsetScaleX)
    }

    public func getOffsetScaleY() -> Float {
        return spine_transform_constraint_data_get_offset_scale_y(data)
    }

    public func setOffsetScaleY(offsetScaleY: Float) {
        spine_transform_constraint_data_set_offset_scale_y(data, offsetScaleY)
    }

    public func getOffsetShearY() -> Float {
        return spine_transform_constraint_data_get_offset_shear_y(data)
    }

    public func setOffsetShearY(offsetShearY: Float) {
        spine_transform_constraint_data_set_offset_shear_y(data, offsetShearY)
    }

    public func getIsRelative() -> Int32 {
        return spine_transform_constraint_data_get_is_relative(data)
    }

    public func setIsRelative(isRelative: Int32) {
        spine_transform_constraint_data_set_is_relative(data, isRelative)
    }

    public func getIsLocal() -> Int32 {
        return spine_transform_constraint_data_get_is_local(data)
    }

    public func setIsLocal(isLocal: Int32) {
        spine_transform_constraint_data_set_is_local(data, isLocal)
    }

}

public final class SpineBoundingBoxAttachment {

    internal let attachment: spine_bounding_box_attachment

    internal init(attachment: spine_bounding_box_attachment) {
        self.attachment = attachment
    }

    public func getColor() -> spine_color {
        return spine_bounding_box_attachment_get_color(attachment)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_bounding_box_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpinePhysicsConstraintData {

    internal let data: spine_physics_constraint_data

    internal init(data: spine_physics_constraint_data) {
        self.data = data
    }

    public func setBone(bone: spine_bone_data) {
        spine_physics_constraint_data_set_bone(data, bone)
    }

    public func getBone() -> spine_bone_data {
        return spine_physics_constraint_data_get_bone(data)
    }

    public func setX(x: Float) {
        spine_physics_constraint_data_set_x(data, x)
    }

    public func getX() -> Float {
        return spine_physics_constraint_data_get_x(data)
    }

    public func setY(y: Float) {
        spine_physics_constraint_data_set_y(data, y)
    }

    public func getY() -> Float {
        return spine_physics_constraint_data_get_y(data)
    }

    public func setRotate(rotate: Float) {
        spine_physics_constraint_data_set_rotate(data, rotate)
    }

    public func getRotate() -> Float {
        return spine_physics_constraint_data_get_rotate(data)
    }

    public func setScaleX(scaleX: Float) {
        spine_physics_constraint_data_set_scale_x(data, scaleX)
    }

    public func getScaleX() -> Float {
        return spine_physics_constraint_data_get_scale_x(data)
    }

    public func setShearX(shearX: Float) {
        spine_physics_constraint_data_set_shear_x(data, shearX)
    }

    public func getShearX() -> Float {
        return spine_physics_constraint_data_get_shear_x(data)
    }

    public func setLimit(limit: Float) {
        spine_physics_constraint_data_set_limit(data, limit)
    }

    public func getLimit() -> Float {
        return spine_physics_constraint_data_get_limit(data)
    }

    public func setStep(step: Float) {
        spine_physics_constraint_data_set_step(data, step)
    }

    public func getStep() -> Float {
        return spine_physics_constraint_data_get_step(data)
    }

    public func setInertia(inertia: Float) {
        spine_physics_constraint_data_set_inertia(data, inertia)
    }

    public func getInertia() -> Float {
        return spine_physics_constraint_data_get_inertia(data)
    }

    public func setStrength(strength: Float) {
        spine_physics_constraint_data_set_strength(data, strength)
    }

    public func getStrength() -> Float {
        return spine_physics_constraint_data_get_strength(data)
    }

    public func setDamping(damping: Float) {
        spine_physics_constraint_data_set_damping(data, damping)
    }

    public func getDamping() -> Float {
        return spine_physics_constraint_data_get_damping(data)
    }

    public func setMassInverse(massInverse: Float) {
        spine_physics_constraint_data_set_mass_inverse(data, massInverse)
    }

    public func getMassInverse() -> Float {
        return spine_physics_constraint_data_get_mass_inverse(data)
    }

    public func setWind(wind: Float) {
        spine_physics_constraint_data_set_wind(data, wind)
    }

    public func getWind() -> Float {
        return spine_physics_constraint_data_get_wind(data)
    }

    public func setGravity(gravity: Float) {
        spine_physics_constraint_data_set_gravity(data, gravity)
    }

    public func getGravity() -> Float {
        return spine_physics_constraint_data_get_gravity(data)
    }

    public func setMix(mix: Float) {
        spine_physics_constraint_data_set_mix(data, mix)
    }

    public func getMix() -> Float {
        return spine_physics_constraint_data_get_mix(data)
    }

    public func setInertiaGlobal(inertiaGlobal: Int32) {
        spine_physics_constraint_data_set_inertia_global(data, inertiaGlobal)
    }

    public func isInertiaGlobal() -> Int32 {
        return spine_physics_constraint_data_is_inertia_global(data)
    }

    public func setStrengthGlobal(strengthGlobal: Int32) {
        spine_physics_constraint_data_set_strength_global(data, strengthGlobal)
    }

    public func isStrengthGlobal() -> Int32 {
        return spine_physics_constraint_data_is_strength_global(data)
    }

    public func setDampingGlobal(dampingGlobal: Int32) {
        spine_physics_constraint_data_set_damping_global(data, dampingGlobal)
    }

    public func isDampingGlobal() -> Int32 {
        return spine_physics_constraint_data_is_damping_global(data)
    }

    public func setMassGlobal(massGlobal: Int32) {
        spine_physics_constraint_data_set_mass_global(data, massGlobal)
    }

    public func isMassGlobal() -> Int32 {
        return spine_physics_constraint_data_is_mass_global(data)
    }

    public func setWindGlobal(windGlobal: Int32) {
        spine_physics_constraint_data_set_wind_global(data, windGlobal)
    }

    public func isWindGlobal() -> Int32 {
        return spine_physics_constraint_data_is_wind_global(data)
    }

    public func setGravityGlobal(gravityGlobal: Int32) {
        spine_physics_constraint_data_set_gravity_global(data, gravityGlobal)
    }

    public func isGravityGlobal() -> Int32 {
        return spine_physics_constraint_data_is_gravity_global(data)
    }

    public func setMixGlobal(mixGlobal: Int32) {
        spine_physics_constraint_data_set_mix_global(data, mixGlobal)
    }

    public func isMixGlobal() -> Int32 {
        return spine_physics_constraint_data_is_mix_global(data)
    }

}

public final class SpineAnimationStateEvents {

    internal let events: spine_animation_state_events

    internal init(events: spine_animation_state_events) {
        self.events = events
    }

    public func getNumEvents() -> Int32 {
        return spine_animation_state_events_get_num_events(events)
    }

    public func getEventType(index: Int32) -> spine_event_type {
        return spine_animation_state_events_get_event_type(events, index)
    }

    public func getTrackEntry(index: Int32) -> spine_track_entry {
        return spine_animation_state_events_get_track_entry(events, index)
    }

    public func getEvent(index: Int32) -> spine_event {
        return spine_animation_state_events_get_event(events, index)
    }

    public func reset() {
        spine_animation_state_events_reset(events)
    }

}

public final class SpineTransformConstraint {

    internal let constraint: spine_transform_constraint

    internal init(constraint: spine_transform_constraint) {
        self.constraint = constraint
    }

    public func update() {
        spine_transform_constraint_update(constraint)
    }

    public func getOrder() -> Int32 {
        return spine_transform_constraint_get_order(constraint)
    }

    public func getData() -> spine_transform_constraint_data {
        return spine_transform_constraint_get_data(constraint)
    }

    public func getNumBones() -> Int32 {
        return spine_transform_constraint_get_num_bones(constraint)
    }

    public func getBones() -> [spine_bone] {
        let num = Int(spine_transform_constraint_get_num_bones(constraint))
        let native = spine_transform_constraint_get_bones(constraint)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getTarget() -> spine_bone {
        return spine_transform_constraint_get_target(constraint)
    }

    public func setTarget(target: spine_bone) {
        spine_transform_constraint_set_target(constraint, target)
    }

    public func getMixRotate() -> Float {
        return spine_transform_constraint_get_mix_rotate(constraint)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_transform_constraint_set_mix_rotate(constraint, mixRotate)
    }

    public func getMixX() -> Float {
        return spine_transform_constraint_get_mix_x(constraint)
    }

    public func setMixX(mixX: Float) {
        spine_transform_constraint_set_mix_x(constraint, mixX)
    }

    public func getMixY() -> Float {
        return spine_transform_constraint_get_mix_y(constraint)
    }

    public func setMixY(mixY: Float) {
        spine_transform_constraint_set_mix_y(constraint, mixY)
    }

    public func getMixScaleX() -> Float {
        return spine_transform_constraint_get_mix_scale_x(constraint)
    }

    public func setMixScaleX(mixScaleX: Float) {
        spine_transform_constraint_set_mix_scale_x(constraint, mixScaleX)
    }

    public func getMixScaleY() -> Float {
        return spine_transform_constraint_get_mix_scale_y(constraint)
    }

    public func setMixScaleY(mixScaleY: Float) {
        spine_transform_constraint_set_mix_scale_y(constraint, mixScaleY)
    }

    public func getMixShearY() -> Float {
        return spine_transform_constraint_get_mix_shear_y(constraint)
    }

    public func setMixShearY(mixShearY: Float) {
        spine_transform_constraint_set_mix_shear_y(constraint, mixShearY)
    }

    public func getIsActive() -> Float {
        return spine_transform_constraint_get_is_active(constraint)
    }

    public func setIsActive(isActive: Int32) {
        spine_transform_constraint_set_is_active(constraint, isActive)
    }

}

public final class SpinePathConstraintData {

    internal let data: spine_path_constraint_data

    internal init(data: spine_path_constraint_data) {
        self.data = data
    }

    public func getNumBones() -> Int32 {
        return spine_path_constraint_data_get_num_bones(data)
    }

    public func getBones() -> [spine_bone_data] {
        let num = Int(spine_path_constraint_data_get_num_bones(data))
        let native = spine_path_constraint_data_get_bones(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getTarget() -> spine_slot_data {
        return spine_path_constraint_data_get_target(data)
    }

    public func setTarget(target: spine_slot_data) {
        spine_path_constraint_data_set_target(data, target)
    }

    public func getPositionMode() -> spine_position_mode {
        return spine_path_constraint_data_get_position_mode(data)
    }

    public func setPositionMode(positionMode: spine_position_mode) {
        spine_path_constraint_data_set_position_mode(data, positionMode)
    }

    public func getSpacingMode() -> spine_spacing_mode {
        return spine_path_constraint_data_get_spacing_mode(data)
    }

    public func setSpacingMode(spacingMode: spine_spacing_mode) {
        spine_path_constraint_data_set_spacing_mode(data, spacingMode)
    }

    public func getRotateMode() -> spine_rotate_mode {
        return spine_path_constraint_data_get_rotate_mode(data)
    }

    public func setRotateMode(rotateMode: spine_rotate_mode) {
        spine_path_constraint_data_set_rotate_mode(data, rotateMode)
    }

    public func getOffsetRotation() -> Float {
        return spine_path_constraint_data_get_offset_rotation(data)
    }

    public func setOffsetRotation(offsetRotation: Float) {
        spine_path_constraint_data_set_offset_rotation(data, offsetRotation)
    }

    public func getPosition() -> Float {
        return spine_path_constraint_data_get_position(data)
    }

    public func setPosition(position: Float) {
        spine_path_constraint_data_set_position(data, position)
    }

    public func getSpacing() -> Float {
        return spine_path_constraint_data_get_spacing(data)
    }

    public func setSpacing(spacing: Float) {
        spine_path_constraint_data_set_spacing(data, spacing)
    }

    public func getMixRotate() -> Float {
        return spine_path_constraint_data_get_mix_rotate(data)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_path_constraint_data_set_mix_rotate(data, mixRotate)
    }

    public func getMixX() -> Float {
        return spine_path_constraint_data_get_mix_x(data)
    }

    public func setMixX(mixX: Float) {
        spine_path_constraint_data_set_mix_x(data, mixX)
    }

    public func getMixY() -> Float {
        return spine_path_constraint_data_get_mix_y(data)
    }

    public func setMixY(mixY: Float) {
        spine_path_constraint_data_set_mix_y(data, mixY)
    }

}

public final class SpineAnimationStateData {

    internal let data: spine_animation_state_data

    internal init(data: spine_animation_state_data) {
        self.data = data
    }

    public func getSkeletonData() -> spine_skeleton_data {
        return spine_animation_state_data_get_skeleton_data(data)
    }

    public func getDefaultMix() -> Float {
        return spine_animation_state_data_get_default_mix(data)
    }

    public func setDefaultMix(defaultMix: Float) {
        spine_animation_state_data_set_default_mix(data, defaultMix)
    }

    public func setMix(from: spine_animation, to: spine_animation, duration: Float) {
        spine_animation_state_data_set_mix(data, from, to, duration)
    }

    public func getMix(from: spine_animation, to: spine_animation) -> Float {
        return spine_animation_state_data_get_mix(data, from, to)
    }

    public func setMixByName(fromName: UnsafeMutablePointer<utf8>, toName: UnsafeMutablePointer<utf8>, duration: Float) {
        spine_animation_state_data_set_mix_by_name(data, fromName, toName, duration)
    }

    public func getMixByName(fromName: UnsafeMutablePointer<utf8>, toName: UnsafeMutablePointer<utf8>) -> Float {
        return spine_animation_state_data_get_mix_by_name(data, fromName, toName)
    }

    public func clear() {
        spine_animation_state_data_clear(data)
    }

}

public final class SpineSkeletonDataResult {

    internal let result: spine_skeleton_data_result

    internal init(result: spine_skeleton_data_result) {
        self.result = result
    }

    public func getError() -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_result_get_error(result)
    }

    public func getData() -> spine_skeleton_data {
        return spine_skeleton_data_result_get_data(result)
    }

    public func dispose() {
        spine_skeleton_data_result_dispose(result)
    }

}

public final class SpineClippingAttachment {

    internal let attachment: spine_clipping_attachment

    internal init(attachment: spine_clipping_attachment) {
        self.attachment = attachment
    }

    public func getEndSlot() -> spine_slot_data {
        return spine_clipping_attachment_get_end_slot(attachment)
    }

    public func setEndSlot(endSlot: spine_slot_data) {
        spine_clipping_attachment_set_end_slot(attachment, endSlot)
    }

    public func getColor() -> spine_color {
        return spine_clipping_attachment_get_color(attachment)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_clipping_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpineIkConstraintData {

    internal let data: spine_ik_constraint_data

    internal init(data: spine_ik_constraint_data) {
        self.data = data
    }

    public func getNumBones() -> Int32 {
        return spine_ik_constraint_data_get_num_bones(data)
    }

    public func getBones() -> [spine_bone_data] {
        let num = Int(spine_ik_constraint_data_get_num_bones(data))
        let native = spine_ik_constraint_data_get_bones(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getTarget() -> spine_bone_data {
        return spine_ik_constraint_data_get_target(data)
    }

    public func setTarget(target: spine_bone_data) {
        spine_ik_constraint_data_set_target(data, target)
    }

    public func getBendDirection() -> Int32 {
        return spine_ik_constraint_data_get_bend_direction(data)
    }

    public func setBendDirection(bendDirection: Int32) {
        spine_ik_constraint_data_set_bend_direction(data, bendDirection)
    }

    public func getCompress() -> Int32 {
        return spine_ik_constraint_data_get_compress(data)
    }

    public func setCompress(compress: Int32) {
        spine_ik_constraint_data_set_compress(data, compress)
    }

    public func getStretch() -> Int32 {
        return spine_ik_constraint_data_get_stretch(data)
    }

    public func setStretch(stretch: Int32) {
        spine_ik_constraint_data_set_stretch(data, stretch)
    }

    public func getUniform() -> Int32 {
        return spine_ik_constraint_data_get_uniform(data)
    }

    public func setUniform(uniform: Int32) {
        spine_ik_constraint_data_set_uniform(data, uniform)
    }

    public func getMix() -> Float {
        return spine_ik_constraint_data_get_mix(data)
    }

    public func setMix(mix: Float) {
        spine_ik_constraint_data_set_mix(data, mix)
    }

    public func getSoftness() -> Float {
        return spine_ik_constraint_data_get_softness(data)
    }

    public func setSoftness(softness: Float) {
        spine_ik_constraint_data_set_softness(data, softness)
    }

}

public final class SpinePhysicsConstraint {

    internal let constraint: spine_physics_constraint

    internal init(constraint: spine_physics_constraint) {
        self.constraint = constraint
    }

    public func setBone(bone: spine_bone) {
        spine_physics_constraint_set_bone(constraint, bone)
    }

    public func getBone() -> spine_bone {
        return spine_physics_constraint_get_bone(constraint)
    }

    public func setInertia(value: Float) {
        spine_physics_constraint_set_inertia(constraint, value)
    }

    public func getInertia() -> Float {
        return spine_physics_constraint_get_inertia(constraint)
    }

    public func setStrength(value: Float) {
        spine_physics_constraint_set_strength(constraint, value)
    }

    public func getStrength() -> Float {
        return spine_physics_constraint_get_strength(constraint)
    }

    public func setDamping(value: Float) {
        spine_physics_constraint_set_damping(constraint, value)
    }

    public func getDamping() -> Float {
        return spine_physics_constraint_get_damping(constraint)
    }

    public func setMassInverse(value: Float) {
        spine_physics_constraint_set_mass_inverse(constraint, value)
    }

    public func getMassInverse() -> Float {
        return spine_physics_constraint_get_mass_inverse(constraint)
    }

    public func setWind(value: Float) {
        spine_physics_constraint_set_wind(constraint, value)
    }

    public func getWind() -> Float {
        return spine_physics_constraint_get_wind(constraint)
    }

    public func setGravity(value: Float) {
        spine_physics_constraint_set_gravity(constraint, value)
    }

    public func getGravity() -> Float {
        return spine_physics_constraint_get_gravity(constraint)
    }

    public func setMix(value: Float) {
        spine_physics_constraint_set_mix(constraint, value)
    }

    public func getMix() -> Float {
        return spine_physics_constraint_get_mix(constraint)
    }

    public func setReset(value: Int32) {
        spine_physics_constraint_set_reset(constraint, value)
    }

    public func getReset() -> Int32 {
        return spine_physics_constraint_get_reset(constraint)
    }

    public func setUx(value: Float) {
        spine_physics_constraint_set_ux(constraint, value)
    }

    public func getUx() -> Float {
        return spine_physics_constraint_get_ux(constraint)
    }

    public func setUy(value: Float) {
        spine_physics_constraint_set_uy(constraint, value)
    }

    public func getUy() -> Float {
        return spine_physics_constraint_get_uy(constraint)
    }

    public func setCx(value: Float) {
        spine_physics_constraint_set_cx(constraint, value)
    }

    public func getCx() -> Float {
        return spine_physics_constraint_get_cx(constraint)
    }

    public func setCy(value: Float) {
        spine_physics_constraint_set_cy(constraint, value)
    }

    public func getCy() -> Float {
        return spine_physics_constraint_get_cy(constraint)
    }

    public func setTx(value: Float) {
        spine_physics_constraint_set_tx(constraint, value)
    }

    public func getTx() -> Float {
        return spine_physics_constraint_get_tx(constraint)
    }

    public func setTy(value: Float) {
        spine_physics_constraint_set_ty(constraint, value)
    }

    public func getTy() -> Float {
        return spine_physics_constraint_get_ty(constraint)
    }

    public func setXOffset(value: Float) {
        spine_physics_constraint_set_x_offset(constraint, value)
    }

    public func getXOffset() -> Float {
        return spine_physics_constraint_get_x_offset(constraint)
    }

    public func setXVelocity(value: Float) {
        spine_physics_constraint_set_x_velocity(constraint, value)
    }

    public func getXVelocity() -> Float {
        return spine_physics_constraint_get_x_velocity(constraint)
    }

    public func setYOffset(value: Float) {
        spine_physics_constraint_set_y_offset(constraint, value)
    }

    public func getYOffset() -> Float {
        return spine_physics_constraint_get_y_offset(constraint)
    }

    public func setYVelocity(value: Float) {
        spine_physics_constraint_set_y_velocity(constraint, value)
    }

    public func getYVelocity() -> Float {
        return spine_physics_constraint_get_y_velocity(constraint)
    }

    public func setRotateOffset(value: Float) {
        spine_physics_constraint_set_rotate_offset(constraint, value)
    }

    public func getRotateOffset() -> Float {
        return spine_physics_constraint_get_rotate_offset(constraint)
    }

    public func setRotateVelocity(value: Float) {
        spine_physics_constraint_set_rotate_velocity(constraint, value)
    }

    public func getRotateVelocity() -> Float {
        return spine_physics_constraint_get_rotate_velocity(constraint)
    }

    public func setScaleOffset(value: Float) {
        spine_physics_constraint_set_scale_offset(constraint, value)
    }

    public func getScaleOffset() -> Float {
        return spine_physics_constraint_get_scale_offset(constraint)
    }

    public func setScaleVelocity(value: Float) {
        spine_physics_constraint_set_scale_velocity(constraint, value)
    }

    public func getScaleVelocity() -> Float {
        return spine_physics_constraint_get_scale_velocity(constraint)
    }

    public func setActive(value: Int32) {
        spine_physics_constraint_set_active(constraint, value)
    }

    public func isActive() -> Int32 {
        return spine_physics_constraint_is_active(constraint)
    }

    public func setRemaining(value: Float) {
        spine_physics_constraint_set_remaining(constraint, value)
    }

    public func getRemaining() -> Float {
        return spine_physics_constraint_get_remaining(constraint)
    }

    public func setLastTime(value: Float) {
        spine_physics_constraint_set_last_time(constraint, value)
    }

    public func getLastTime() -> Float {
        return spine_physics_constraint_get_last_time(constraint)
    }

    public func reset() {
        spine_physics_constraint_reset(constraint)
    }

    public func update(physics: spine_physics) {
        spine_physics_constraint_update(constraint, physics)
    }

    public func translate(x: Float, y: Float) {
        spine_physics_constraint_translate(constraint, x, y)
    }

    public func rotate(x: Float, y: Float, degrees: Float) {
        spine_physics_constraint_rotate(constraint, x, y, degrees)
    }

}

public final class SpineRegionAttachment {

    internal let attachment: spine_region_attachment

    internal init(attachment: spine_region_attachment) {
        self.attachment = attachment
    }

    public func updateRegion() {
        spine_region_attachment_update_region(attachment)
    }

    public func computeWorldVertices(slot: spine_slot, worldVertices: UnsafeMutablePointer<Float>) {
        spine_region_attachment_compute_world_vertices(attachment, slot, worldVertices)
    }

    public func getX() -> Float {
        return spine_region_attachment_get_x(attachment)
    }

    public func setX(x: Float) {
        spine_region_attachment_set_x(attachment, x)
    }

    public func getY() -> Float {
        return spine_region_attachment_get_y(attachment)
    }

    public func setY(y: Float) {
        spine_region_attachment_set_y(attachment, y)
    }

    public func getRotation() -> Float {
        return spine_region_attachment_get_rotation(attachment)
    }

    public func setRotation(rotation: Float) {
        spine_region_attachment_set_rotation(attachment, rotation)
    }

    public func getScaleX() -> Float {
        return spine_region_attachment_get_scale_x(attachment)
    }

    public func setScaleX(scaleX: Float) {
        spine_region_attachment_set_scale_x(attachment, scaleX)
    }

    public func getScaleY() -> Float {
        return spine_region_attachment_get_scale_y(attachment)
    }

    public func setScaleY(scaleY: Float) {
        spine_region_attachment_set_scale_y(attachment, scaleY)
    }

    public func getWidth() -> Float {
        return spine_region_attachment_get_width(attachment)
    }

    public func setWidth(width: Float) {
        spine_region_attachment_set_width(attachment, width)
    }

    public func getHeight() -> Float {
        return spine_region_attachment_get_height(attachment)
    }

    public func setHeight(height: Float) {
        spine_region_attachment_set_height(attachment, height)
    }

    public func getColor() -> spine_color {
        return spine_region_attachment_get_color(attachment)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_region_attachment_set_color(attachment, r, g, b, a)
    }

    public func getPath() -> UnsafeMutablePointer<utf8> {
        return spine_region_attachment_get_path(attachment)
    }

    public func getRegion() -> spine_texture_region {
        return spine_region_attachment_get_region(attachment)
    }

    public func getSequence() -> spine_sequence {
        return spine_region_attachment_get_sequence(attachment)
    }

    public func getNumOffset() -> Int32 {
        return spine_region_attachment_get_num_offset(attachment)
    }

    public func getOffset() -> UnsafeMutablePointer<Float> {
        return spine_region_attachment_get_offset(attachment)
    }

    public func getNumUvs() -> Int32 {
        return spine_region_attachment_get_num_uvs(attachment)
    }

    public func getUvs() -> UnsafeMutablePointer<Float> {
        return spine_region_attachment_get_uvs(attachment)
    }

}

public final class SpineVertexAttachment {

    internal let attachment: spine_vertex_attachment

    internal init(attachment: spine_vertex_attachment) {
        self.attachment = attachment
    }

    public func getWorldVerticesLength() -> Int32 {
        return spine_vertex_attachment_get_world_vertices_length(attachment)
    }

    public func computeWorldVertices(slot: spine_slot, worldVertices: UnsafeMutablePointer<Float>) {
        spine_vertex_attachment_compute_world_vertices(attachment, slot, worldVertices)
    }

    public func getNumBones() -> Int32 {
        return spine_vertex_attachment_get_num_bones(attachment)
    }

    public func getBones() -> UnsafeMutablePointer<Int32> {
        return spine_vertex_attachment_get_bones(attachment)
    }

    public func getNumVertices() -> Int32 {
        return spine_vertex_attachment_get_num_vertices(attachment)
    }

    public func getVertices() -> UnsafeMutablePointer<Float> {
        return spine_vertex_attachment_get_vertices(attachment)
    }

    public func getTimelineAttachment() -> spine_attachment {
        return spine_vertex_attachment_get_timeline_attachment(attachment)
    }

    public func setTimelineAttachment(timelineAttachment: spine_attachment) {
        spine_vertex_attachment_set_timeline_attachment(attachment, timelineAttachment)
    }

}

public final class SpineSkeletonDrawable {

    internal let drawable: spine_skeleton_drawable

    internal init(drawable: spine_skeleton_drawable) {
        self.drawable = drawable
    }

    public func create(skeletonData: spine_skeleton_data) -> spine_skeleton_drawable {
        return spine_skeleton_drawable_create(skeletonData)
    }

    public func render() -> spine_render_command {
        return spine_skeleton_drawable_render(drawable)
    }

    public func dispose() {
        spine_skeleton_drawable_dispose(drawable)
    }

    public func getSkeleton() -> spine_skeleton {
        return spine_skeleton_drawable_get_skeleton(drawable)
    }

    public func getAnimationState() -> spine_animation_state {
        return spine_skeleton_drawable_get_animation_state(drawable)
    }

    public func getAnimationStateData() -> spine_animation_state_data {
        return spine_skeleton_drawable_get_animation_state_data(drawable)
    }

    public func getAnimationStateEvents() -> spine_animation_state_events {
        return spine_skeleton_drawable_get_animation_state_events(drawable)
    }

}

public final class SpinePointAttachment {

    internal let attachment: spine_point_attachment

    internal init(attachment: spine_point_attachment) {
        self.attachment = attachment
    }

    public func computeWorldPosition(bone: spine_bone) -> spine_vector {
        return spine_point_attachment_compute_world_position(attachment, bone)
    }

    public func computeWorldRotation(bone: spine_bone) -> Float {
        return spine_point_attachment_compute_world_rotation(attachment, bone)
    }

    public func getX() -> Float {
        return spine_point_attachment_get_x(attachment)
    }

    public func setX(x: Float) {
        spine_point_attachment_set_x(attachment, x)
    }

    public func getY() -> Float {
        return spine_point_attachment_get_y(attachment)
    }

    public func setY(y: Float) {
        spine_point_attachment_set_y(attachment, y)
    }

    public func getRotation() -> Float {
        return spine_point_attachment_get_rotation(attachment)
    }

    public func setRotation(rotation: Float) {
        spine_point_attachment_set_rotation(attachment, rotation)
    }

    public func getColor() -> spine_color {
        return spine_point_attachment_get_color(attachment)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_point_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpineMeshAttachment {

    internal let attachment: spine_mesh_attachment

    internal init(attachment: spine_mesh_attachment) {
        self.attachment = attachment
    }

    public func updateRegion() {
        spine_mesh_attachment_update_region(attachment)
    }

    public func getHullLength() -> Int32 {
        return spine_mesh_attachment_get_hull_length(attachment)
    }

    public func setHullLength(hullLength: Int32) {
        spine_mesh_attachment_set_hull_length(attachment, hullLength)
    }

    public func getNumRegionUvs() -> Int32 {
        return spine_mesh_attachment_get_num_region_uvs(attachment)
    }

    public func getRegionUvs() -> UnsafeMutablePointer<Float> {
        return spine_mesh_attachment_get_region_uvs(attachment)
    }

    public func getNumUvs() -> Int32 {
        return spine_mesh_attachment_get_num_uvs(attachment)
    }

    public func getUvs() -> UnsafeMutablePointer<Float> {
        return spine_mesh_attachment_get_uvs(attachment)
    }

    public func getNumTriangles() -> Int32 {
        return spine_mesh_attachment_get_num_triangles(attachment)
    }

    public func getTriangles() -> UnsafeMutablePointer<UInt16> {
        return spine_mesh_attachment_get_triangles(attachment)
    }

    public func getColor() -> spine_color {
        return spine_mesh_attachment_get_color(attachment)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_mesh_attachment_set_color(attachment, r, g, b, a)
    }

    public func getPath() -> UnsafeMutablePointer<utf8> {
        return spine_mesh_attachment_get_path(attachment)
    }

    public func getRegion() -> spine_texture_region {
        return spine_mesh_attachment_get_region(attachment)
    }

    public func getSequence() -> spine_sequence {
        return spine_mesh_attachment_get_sequence(attachment)
    }

    public func getParentMesh() -> spine_mesh_attachment {
        return spine_mesh_attachment_get_parent_mesh(attachment)
    }

    public func setParentMesh(parentMesh: spine_mesh_attachment) {
        spine_mesh_attachment_set_parent_mesh(attachment, parentMesh)
    }

    public func getNumEdges() -> Int32 {
        return spine_mesh_attachment_get_num_edges(attachment)
    }

    public func getEdges() -> UnsafeMutablePointer<UInt16> {
        return spine_mesh_attachment_get_edges(attachment)
    }

    public func getWidth() -> Float {
        return spine_mesh_attachment_get_width(attachment)
    }

    public func setWidth(width: Float) {
        spine_mesh_attachment_set_width(attachment, width)
    }

    public func getHeight() -> Float {
        return spine_mesh_attachment_get_height(attachment)
    }

    public func setHeight(height: Float) {
        spine_mesh_attachment_set_height(attachment, height)
    }

}

public final class SpinePathAttachment {

    internal let attachment: spine_path_attachment

    internal init(attachment: spine_path_attachment) {
        self.attachment = attachment
    }

    public func getNumLengths() -> Int32 {
        return spine_path_attachment_get_num_lengths(attachment)
    }

    public func getLengths() -> UnsafeMutablePointer<Float> {
        return spine_path_attachment_get_lengths(attachment)
    }

    public func getIsClosed() -> Int32 {
        return spine_path_attachment_get_is_closed(attachment)
    }

    public func setIsClosed(isClosed: Int32) {
        spine_path_attachment_set_is_closed(attachment, isClosed)
    }

    public func getIsConstantSpeed() -> Int32 {
        return spine_path_attachment_get_is_constant_speed(attachment)
    }

    public func setIsConstantSpeed(isConstantSpeed: Int32) {
        spine_path_attachment_set_is_constant_speed(attachment, isConstantSpeed)
    }

    public func getColor() -> spine_color {
        return spine_path_attachment_get_color(attachment)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_path_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpineConstraintData {

    internal let data: spine_constraint_data

    internal init(data: spine_constraint_data) {
        self.data = data
    }

    public func getType() -> spine_constraint_type {
        return spine_constraint_data_get_type(data)
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_constraint_data_get_name(data)
    }

    public func getOrder() -> UInt64 {
        return spine_constraint_data_get_order(data)
    }

    public func setOrder(order: UInt64) {
        spine_constraint_data_set_order(data, order)
    }

    public func getIsSkinRequired() -> Int32 {
        return spine_constraint_data_get_is_skin_required(data)
    }

    public func setIsSkinRequired(isSkinRequired: Int32) {
        spine_constraint_data_set_is_skin_required(data, isSkinRequired)
    }

}

public final class SpinePathConstraint {

    internal let constraint: spine_path_constraint

    internal init(constraint: spine_path_constraint) {
        self.constraint = constraint
    }

    public func update() {
        spine_path_constraint_update(constraint)
    }

    public func getOrder() -> Int32 {
        return spine_path_constraint_get_order(constraint)
    }

    public func getData() -> spine_path_constraint_data {
        return spine_path_constraint_get_data(constraint)
    }

    public func getNumBones() -> Int32 {
        return spine_path_constraint_get_num_bones(constraint)
    }

    public func getBones() -> [spine_bone] {
        let num = Int(spine_path_constraint_get_num_bones(constraint))
        let native = spine_path_constraint_get_bones(constraint)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getTarget() -> spine_slot {
        return spine_path_constraint_get_target(constraint)
    }

    public func setTarget(target: spine_slot) {
        spine_path_constraint_set_target(constraint, target)
    }

    public func getPosition() -> Float {
        return spine_path_constraint_get_position(constraint)
    }

    public func setPosition(position: Float) {
        spine_path_constraint_set_position(constraint, position)
    }

    public func getSpacing() -> Float {
        return spine_path_constraint_get_spacing(constraint)
    }

    public func setSpacing(spacing: Float) {
        spine_path_constraint_set_spacing(constraint, spacing)
    }

    public func getMixRotate() -> Float {
        return spine_path_constraint_get_mix_rotate(constraint)
    }

    public func setMixRotate(mixRotate: Float) {
        spine_path_constraint_set_mix_rotate(constraint, mixRotate)
    }

    public func getMixX() -> Float {
        return spine_path_constraint_get_mix_x(constraint)
    }

    public func setMixX(mixX: Float) {
        spine_path_constraint_set_mix_x(constraint, mixX)
    }

    public func getMixY() -> Float {
        return spine_path_constraint_get_mix_y(constraint)
    }

    public func setMixY(mixY: Float) {
        spine_path_constraint_set_mix_y(constraint, mixY)
    }

    public func getIsActive() -> Int32 {
        return spine_path_constraint_get_is_active(constraint)
    }

    public func setIsActive(isActive: Int32) {
        spine_path_constraint_set_is_active(constraint, isActive)
    }

}

public final class SpineAnimationState {

    internal let state: spine_animation_state

    internal init(state: spine_animation_state) {
        self.state = state
    }

    public func update(delta: Float) {
        spine_animation_state_update(state, delta)
    }

    public func apply(skeleton: spine_skeleton) {
        spine_animation_state_apply(state, skeleton)
    }

    public func clearTracks() {
        spine_animation_state_clear_tracks(state)
    }

    public func clearTrack(trackIndex: Int32) {
        spine_animation_state_clear_track(state, trackIndex)
    }

    public func getNumTracks() -> Int32 {
        return spine_animation_state_get_num_tracks(state)
    }

    public func setAnimationByName(trackIndex: Int32, animationName: UnsafeMutablePointer<utf8>, loop: Int32) -> spine_track_entry {
        return spine_animation_state_set_animation_by_name(state, trackIndex, animationName, loop)
    }

    public func setAnimation(trackIndex: Int32, animation: spine_animation, loop: Int32) -> spine_track_entry {
        return spine_animation_state_set_animation(state, trackIndex, animation, loop)
    }

    public func addAnimationByName(trackIndex: Int32, animationName: UnsafeMutablePointer<utf8>, loop: Int32, delay: Float) -> spine_track_entry {
        return spine_animation_state_add_animation_by_name(state, trackIndex, animationName, loop, delay)
    }

    public func addAnimation(trackIndex: Int32, animation: spine_animation, loop: Int32, delay: Float) -> spine_track_entry {
        return spine_animation_state_add_animation(state, trackIndex, animation, loop, delay)
    }

    public func setEmptyAnimation(trackIndex: Int32, mixDuration: Float) -> spine_track_entry {
        return spine_animation_state_set_empty_animation(state, trackIndex, mixDuration)
    }

    public func addEmptyAnimation(trackIndex: Int32, mixDuration: Float, delay: Float) -> spine_track_entry {
        return spine_animation_state_add_empty_animation(state, trackIndex, mixDuration, delay)
    }

    public func setEmptyAnimations(mixDuration: Float) {
        spine_animation_state_set_empty_animations(state, mixDuration)
    }

    public func getCurrent(trackIndex: Int32) -> spine_track_entry {
        return spine_animation_state_get_current(state, trackIndex)
    }

    public func getData() -> spine_animation_state_data {
        return spine_animation_state_get_data(state)
    }

    public func getTimeScale() -> Float {
        return spine_animation_state_get_time_scale(state)
    }

    public func setTimeScale(timeScale: Float) {
        spine_animation_state_set_time_scale(state, timeScale)
    }

    public func disposeTrackEntry(entry: spine_track_entry) {
        spine_animation_state_dispose_track_entry(state, entry)
    }

}

public final class SpineTextureRegion {

    internal let region: spine_texture_region

    internal init(region: spine_texture_region) {
        self.region = region
    }

    public func getTexture() -> UnsafeMutableRawPointer {
        return spine_texture_region_get_texture(region)
    }

    public func setTexture(texture: UnsafeMutableRawPointer) {
        spine_texture_region_set_texture(region, texture)
    }

    public func getU() -> Float {
        return spine_texture_region_get_u(region)
    }

    public func setU(u: Float) {
        spine_texture_region_set_u(region, u)
    }

    public func getV() -> Float {
        return spine_texture_region_get_v(region)
    }

    public func setV(v: Float) {
        spine_texture_region_set_v(region, v)
    }

    public func getU2() -> Float {
        return spine_texture_region_get_u2(region)
    }

    public func setU2(u2: Float) {
        spine_texture_region_set_u2(region, u2)
    }

    public func getV2() -> Float {
        return spine_texture_region_get_v2(region)
    }

    public func setV2(v2: Float) {
        spine_texture_region_set_v2(region, v2)
    }

    public func getDegrees() -> Int32 {
        return spine_texture_region_get_degrees(region)
    }

    public func setDegrees(degrees: Int32) {
        spine_texture_region_set_degrees(region, degrees)
    }

    public func getOffsetX() -> Float {
        return spine_texture_region_get_offset_x(region)
    }

    public func setOffsetX(offsetX: Float) {
        spine_texture_region_set_offset_x(region, offsetX)
    }

    public func getOffsetY() -> Float {
        return spine_texture_region_get_offset_y(region)
    }

    public func setOffsetY(offsetY: Float) {
        spine_texture_region_set_offset_y(region, offsetY)
    }

    public func getWidth() -> Int32 {
        return spine_texture_region_get_width(region)
    }

    public func setWidth(width: Int32) {
        spine_texture_region_set_width(region, width)
    }

    public func getHeight() -> Int32 {
        return spine_texture_region_get_height(region)
    }

    public func setHeight(height: Int32) {
        spine_texture_region_set_height(region, height)
    }

    public func getOriginalWidth() -> Int32 {
        return spine_texture_region_get_original_width(region)
    }

    public func setOriginalWidth(originalWidth: Int32) {
        spine_texture_region_set_original_width(region, originalWidth)
    }

    public func getOriginalHeight() -> Int32 {
        return spine_texture_region_get_original_height(region)
    }

    public func setOriginalHeight(originalHeight: Int32) {
        spine_texture_region_set_original_height(region, originalHeight)
    }

}

public final class SpineRenderCommand {

    internal let command: spine_render_command

    internal init(command: spine_render_command) {
        self.command = command
    }

    public func getPositions() -> UnsafeMutablePointer<Float> {
        return spine_render_command_get_positions(command)
    }

    public func getUvs() -> UnsafeMutablePointer<Float> {
        return spine_render_command_get_uvs(command)
    }

    public func getColors() -> UnsafeMutablePointer<Int32> {
        return spine_render_command_get_colors(command)
    }

    public func getNumVertices() -> Int32 {
        return spine_render_command_get_num_vertices(command)
    }

    public func getIndices() -> UnsafeMutablePointer<UInt16> {
        return spine_render_command_get_indices(command)
    }

    public func getNumIndices() -> Int32 {
        return spine_render_command_get_num_indices(command)
    }

    public func getAtlasPage() -> Int32 {
        return spine_render_command_get_atlas_page(command)
    }

    public func getBlendMode() -> spine_blend_mode {
        return spine_render_command_get_blend_mode(command)
    }

    public func getNext() -> spine_render_command {
        return spine_render_command_get_next(command)
    }

}

public final class SpineSkeletonData {

    internal let data: spine_skeleton_data

    internal init(data: spine_skeleton_data) {
        self.data = data
    }

    public func loadJson(atlas: spine_atlas, skeletonData: UnsafeMutablePointer<utf8>) -> spine_skeleton_data_result {
        return spine_skeleton_data_load_json(atlas, skeletonData)
    }

    public func loadBinary(atlas: spine_atlas, skeletonData: [const uint8_t], length: Int32) -> spine_skeleton_data_result {
        return spine_skeleton_data_load_binary(atlas, skeletonData, length)
    }

    public func findBone(name: UnsafeMutablePointer<utf8>) -> spine_bone_data {
        return spine_skeleton_data_find_bone(data, name)
    }

    public func findSlot(name: UnsafeMutablePointer<utf8>) -> spine_slot_data {
        return spine_skeleton_data_find_slot(data, name)
    }

    public func findSkin(name: UnsafeMutablePointer<utf8>) -> spine_skin {
        return spine_skeleton_data_find_skin(data, name)
    }

    public func findEvent(name: UnsafeMutablePointer<utf8>) -> spine_event_data {
        return spine_skeleton_data_find_event(data, name)
    }

    public func findAnimation(name: UnsafeMutablePointer<utf8>) -> spine_animation {
        return spine_skeleton_data_find_animation(data, name)
    }

    public func findIkConstraint(name: UnsafeMutablePointer<utf8>) -> spine_ik_constraint_data {
        return spine_skeleton_data_find_ik_constraint(data, name)
    }

    public func findTransformConstraint(name: UnsafeMutablePointer<utf8>) -> spine_transform_constraint_data {
        return spine_skeleton_data_find_transform_constraint(data, name)
    }

    public func findPathConstraint(name: UnsafeMutablePointer<utf8>) -> spine_path_constraint_data {
        return spine_skeleton_data_find_path_constraint(data, name)
    }

    public func findPhysicsConstraint(name: UnsafeMutablePointer<utf8>) -> spine_physics_constraint_data {
        return spine_skeleton_data_find_physics_constraint(data, name)
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_name(data)
    }

    public func getNumBones() -> Int32 {
        return spine_skeleton_data_get_num_bones(data)
    }

    public func getBones() -> [spine_bone_data] {
        let num = Int(spine_skeleton_data_get_num_bones(data))
        let native = spine_skeleton_data_get_bones(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumSlots() -> Int32 {
        return spine_skeleton_data_get_num_slots(data)
    }

    public func getSlots() -> [spine_slot_data] {
        let num = Int(spine_skeleton_data_get_num_slots(data))
        let native = spine_skeleton_data_get_slots(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumSkins() -> Int32 {
        return spine_skeleton_data_get_num_skins(data)
    }

    public func getSkins() -> [spine_skin] {
        let num = Int(spine_skeleton_data_get_num_skins(data))
        let native = spine_skeleton_data_get_skins(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getDefaultSkin() -> spine_skin {
        return spine_skeleton_data_get_default_skin(data)
    }

    public func setDefaultSkin(skin: spine_skin) {
        spine_skeleton_data_set_default_skin(data, skin)
    }

    public func getNumEvents() -> Int32 {
        return spine_skeleton_data_get_num_events(data)
    }

    public func getEvents() -> [spine_event_data] {
        let num = Int(spine_skeleton_data_get_num_events(data))
        let native = spine_skeleton_data_get_events(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumAnimations() -> Int32 {
        return spine_skeleton_data_get_num_animations(data)
    }

    public func getAnimations() -> [spine_animation] {
        let num = Int(spine_skeleton_data_get_num_animations(data))
        let native = spine_skeleton_data_get_animations(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumIkConstraints() -> Int32 {
        return spine_skeleton_data_get_num_ik_constraints(data)
    }

    public func getIkConstraints() -> [spine_ik_constraint_data] {
        let num = Int(spine_skeleton_data_get_num_ik_constraints(data))
        let native = spine_skeleton_data_get_ik_constraints(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumTransformConstraints() -> Int32 {
        return spine_skeleton_data_get_num_transform_constraints(data)
    }

    public func getTransformConstraints() -> [spine_transform_constraint_data] {
        let num = Int(spine_skeleton_data_get_num_transform_constraints(data))
        let native = spine_skeleton_data_get_transform_constraints(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumPathConstraints() -> Int32 {
        return spine_skeleton_data_get_num_path_constraints(data)
    }

    public func getPathConstraints() -> [spine_path_constraint_data] {
        let num = Int(spine_skeleton_data_get_num_path_constraints(data))
        let native = spine_skeleton_data_get_path_constraints(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumPhysicsConstraints() -> Int32 {
        return spine_skeleton_data_get_num_physics_constraints(data)
    }

    public func getPhysicsConstraints() -> [spine_physics_constraint_data] {
        let num = Int(spine_skeleton_data_get_num_physics_constraints(data))
        let native = spine_skeleton_data_get_physics_constraints(data)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getX() -> Float {
        return spine_skeleton_data_get_x(data)
    }

    public func setX(x: Float) {
        spine_skeleton_data_set_x(data, x)
    }

    public func getY() -> Float {
        return spine_skeleton_data_get_y(data)
    }

    public func setY(y: Float) {
        spine_skeleton_data_set_y(data, y)
    }

    public func getWidth() -> Float {
        return spine_skeleton_data_get_width(data)
    }

    public func setWidth(width: Float) {
        spine_skeleton_data_set_width(data, width)
    }

    public func getHeight() -> Float {
        return spine_skeleton_data_get_height(data)
    }

    public func setHeight(height: Float) {
        spine_skeleton_data_set_height(data, height)
    }

    public func getVersion() -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_version(data)
    }

    public func getHash() -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_hash(data)
    }

    public func getImagesPath() -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_images_path(data)
    }

    public func getAudioPath() -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_audio_path(data)
    }

    public func getFps() -> Float {
        return spine_skeleton_data_get_fps(data)
    }

    public func getReferenceScale() -> Float {
        return spine_skeleton_data_get_reference_scale(data)
    }

    public func dispose() {
        spine_skeleton_data_dispose(data)
    }

}

public final class SpineIkConstraint {

    internal let constraint: spine_ik_constraint

    internal init(constraint: spine_ik_constraint) {
        self.constraint = constraint
    }

    public func update() {
        spine_ik_constraint_update(constraint)
    }

    public func getOrder() -> Int32 {
        return spine_ik_constraint_get_order(constraint)
    }

    public func getData() -> spine_ik_constraint_data {
        return spine_ik_constraint_get_data(constraint)
    }

    public func getNumBones() -> Int32 {
        return spine_ik_constraint_get_num_bones(constraint)
    }

    public func getBones() -> [spine_bone] {
        let num = Int(spine_ik_constraint_get_num_bones(constraint))
        let native = spine_ik_constraint_get_bones(constraint)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getTarget() -> spine_bone {
        return spine_ik_constraint_get_target(constraint)
    }

    public func setTarget(target: spine_bone) {
        spine_ik_constraint_set_target(constraint, target)
    }

    public func getBendDirection() -> Int32 {
        return spine_ik_constraint_get_bend_direction(constraint)
    }

    public func setBendDirection(bendDirection: Int32) {
        spine_ik_constraint_set_bend_direction(constraint, bendDirection)
    }

    public func getCompress() -> Int32 {
        return spine_ik_constraint_get_compress(constraint)
    }

    public func setCompress(compress: Int32) {
        spine_ik_constraint_set_compress(constraint, compress)
    }

    public func getStretch() -> Int32 {
        return spine_ik_constraint_get_stretch(constraint)
    }

    public func setStretch(stretch: Int32) {
        spine_ik_constraint_set_stretch(constraint, stretch)
    }

    public func getMix() -> Float {
        return spine_ik_constraint_get_mix(constraint)
    }

    public func setMix(mix: Float) {
        spine_ik_constraint_set_mix(constraint, mix)
    }

    public func getSoftness() -> Float {
        return spine_ik_constraint_get_softness(constraint)
    }

    public func setSoftness(softness: Float) {
        spine_ik_constraint_set_softness(constraint, softness)
    }

    public func getIsActive() -> Int32 {
        return spine_ik_constraint_get_is_active(constraint)
    }

    public func setIsActive(isActive: Int32) {
        spine_ik_constraint_set_is_active(constraint, isActive)
    }

}

public final class SpineSkinEntries {

    internal let entries: spine_skin_entries

    internal init(entries: spine_skin_entries) {
        self.entries = entries
    }

    public func getNumEntries() -> Int32 {
        return spine_skin_entries_get_num_entries(entries)
    }

    public func getEntry(index: Int32) -> spine_skin_entry {
        return spine_skin_entries_get_entry(entries, index)
    }

    public func dispose() {
        spine_skin_entries_dispose(entries)
    }

}

public final class SpineTrackEntry {

    internal let entry: spine_track_entry

    internal init(entry: spine_track_entry) {
        self.entry = entry
    }

    public func getTrackIndex() -> Int32 {
        return spine_track_entry_get_track_index(entry)
    }

    public func getAnimation() -> spine_animation {
        return spine_track_entry_get_animation(entry)
    }

    public func getPrevious() -> spine_track_entry {
        return spine_track_entry_get_previous(entry)
    }

    public func getLoop() -> Int32 {
        return spine_track_entry_get_loop(entry)
    }

    public func setLoop(loop: Int32) {
        spine_track_entry_set_loop(entry, loop)
    }

    public func getHoldPrevious() -> Int32 {
        return spine_track_entry_get_hold_previous(entry)
    }

    public func setHoldPrevious(holdPrevious: Int32) {
        spine_track_entry_set_hold_previous(entry, holdPrevious)
    }

    public func getReverse() -> Int32 {
        return spine_track_entry_get_reverse(entry)
    }

    public func setReverse(reverse: Int32) {
        spine_track_entry_set_reverse(entry, reverse)
    }

    public func getShortestRotation() -> Int32 {
        return spine_track_entry_get_shortest_rotation(entry)
    }

    public func setShortestRotation(shortestRotation: Int32) {
        spine_track_entry_set_shortest_rotation(entry, shortestRotation)
    }

    public func getDelay() -> Float {
        return spine_track_entry_get_delay(entry)
    }

    public func setDelay(delay: Float) {
        spine_track_entry_set_delay(entry, delay)
    }

    public func getTrackTime() -> Float {
        return spine_track_entry_get_track_time(entry)
    }

    public func setTrackTime(trackTime: Float) {
        spine_track_entry_set_track_time(entry, trackTime)
    }

    public func getTrackEnd() -> Float {
        return spine_track_entry_get_track_end(entry)
    }

    public func setTrackEnd(trackEnd: Float) {
        spine_track_entry_set_track_end(entry, trackEnd)
    }

    public func getAnimationStart() -> Float {
        return spine_track_entry_get_animation_start(entry)
    }

    public func setAnimationStart(animationStart: Float) {
        spine_track_entry_set_animation_start(entry, animationStart)
    }

    public func getAnimationEnd() -> Float {
        return spine_track_entry_get_animation_end(entry)
    }

    public func setAnimationEnd(animationEnd: Float) {
        spine_track_entry_set_animation_end(entry, animationEnd)
    }

    public func getAnimationLast() -> Float {
        return spine_track_entry_get_animation_last(entry)
    }

    public func setAnimationLast(animationLast: Float) {
        spine_track_entry_set_animation_last(entry, animationLast)
    }

    public func getAnimationTime() -> Float {
        return spine_track_entry_get_animation_time(entry)
    }

    public func getTimeScale() -> Float {
        return spine_track_entry_get_time_scale(entry)
    }

    public func setTimeScale(timeScale: Float) {
        spine_track_entry_set_time_scale(entry, timeScale)
    }

    public func getAlpha() -> Float {
        return spine_track_entry_get_alpha(entry)
    }

    public func setAlpha(alpha: Float) {
        spine_track_entry_set_alpha(entry, alpha)
    }

    public func getEventThreshold() -> Float {
        return spine_track_entry_get_event_threshold(entry)
    }

    public func setEventThreshold(eventThreshold: Float) {
        spine_track_entry_set_event_threshold(entry, eventThreshold)
    }

    public func getAlphaAttachmentThreshold() -> Float {
        return spine_track_entry_get_alpha_attachment_threshold(entry)
    }

    public func setAlphaAttachmentThreshold(attachmentThreshold: Float) {
        spine_track_entry_set_alpha_attachment_threshold(entry, attachmentThreshold)
    }

    public func getMixAttachmentThreshold() -> Float {
        return spine_track_entry_get_mix_attachment_threshold(entry)
    }

    public func setMixAttachmentThreshold(attachmentThreshold: Float) {
        spine_track_entry_set_mix_attachment_threshold(entry, attachmentThreshold)
    }

    public func getMixDrawOrderThreshold() -> Float {
        return spine_track_entry_get_mix_draw_order_threshold(entry)
    }

    public func setMixDrawOrderThreshold(drawOrderThreshold: Float) {
        spine_track_entry_set_mix_draw_order_threshold(entry, drawOrderThreshold)
    }

    public func getNext() -> spine_track_entry {
        return spine_track_entry_get_next(entry)
    }

    public func isComplete() -> Int32 {
        return spine_track_entry_is_complete(entry)
    }

    public func getMixTime() -> Float {
        return spine_track_entry_get_mix_time(entry)
    }

    public func setMixTime(mixTime: Float) {
        spine_track_entry_set_mix_time(entry, mixTime)
    }

    public func getMixDuration() -> Float {
        return spine_track_entry_get_mix_duration(entry)
    }

    public func setMixDuration(mixDuration: Float) {
        spine_track_entry_set_mix_duration(entry, mixDuration)
    }

    public func getMixBlend() -> spine_mix_blend {
        return spine_track_entry_get_mix_blend(entry)
    }

    public func setMixBlend(mixBlend: spine_mix_blend) {
        spine_track_entry_set_mix_blend(entry, mixBlend)
    }

    public func getMixingFrom() -> spine_track_entry {
        return spine_track_entry_get_mixing_from(entry)
    }

    public func getMixingTo() -> spine_track_entry {
        return spine_track_entry_get_mixing_to(entry)
    }

    public func resetRotationDirections() {
        spine_track_entry_reset_rotation_directions(entry)
    }

    public func getTrackComplete() -> Float {
        return spine_track_entry_get_track_complete(entry)
    }

}

public final class SpineAttachment {

    internal let attachment: spine_attachment

    internal init(attachment: spine_attachment) {
        self.attachment = attachment
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_attachment_get_name(attachment)
    }

    public func getType() -> spine_attachment_type {
        return spine_attachment_get_type(attachment)
    }

    public func copy() -> spine_attachment {
        return spine_attachment_copy(attachment)
    }

    public func dispose() {
        spine_attachment_dispose(attachment)
    }

}

public final class SpineConstraint {

    internal let constraint: spine_constraint

    internal init(constraint: spine_constraint) {
        self.constraint = constraint
    }

}

public final class SpineEventData {

    internal let data: spine_event_data

    internal init(data: spine_event_data) {
        self.data = data
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_event_data_get_name(data)
    }

    public func getIntValue() -> Int32 {
        return spine_event_data_get_int_value(data)
    }

    public func setIntValue(value: Int32) {
        spine_event_data_set_int_value(data, value)
    }

    public func getFloatValue() -> Float {
        return spine_event_data_get_float_value(data)
    }

    public func setFloatValue(value: Float) {
        spine_event_data_set_float_value(data, value)
    }

    public func getStringValue() -> UnsafeMutablePointer<utf8> {
        return spine_event_data_get_string_value(data)
    }

    public func setStringValue(value: UnsafeMutablePointer<utf8>) {
        spine_event_data_set_string_value(data, value)
    }

    public func getAudioPath() -> UnsafeMutablePointer<utf8> {
        return spine_event_data_get_audio_path(data)
    }

    public func getVolume() -> Float {
        return spine_event_data_get_volume(data)
    }

    public func setVolume(volume: Float) {
        spine_event_data_set_volume(data, volume)
    }

    public func getBalance() -> Float {
        return spine_event_data_get_balance(data)
    }

    public func setBalance(balance: Float) {
        spine_event_data_set_balance(data, balance)
    }

}

public final class SpineSkinEntry {

    internal let entry: spine_skin_entry

    internal init(entry: spine_skin_entry) {
        self.entry = entry
    }

    public func getSlotIndex() -> Int32 {
        return spine_skin_entry_get_slot_index(entry)
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_skin_entry_get_name(entry)
    }

    public func getAttachment() -> spine_attachment {
        return spine_skin_entry_get_attachment(entry)
    }

}

public final class SpineBoneData {

    internal let data: spine_bone_data

    internal init(data: spine_bone_data) {
        self.data = data
    }

    public func getIndex() -> Int32 {
        return spine_bone_data_get_index(data)
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_bone_data_get_name(data)
    }

    public func getParent() -> spine_bone_data {
        return spine_bone_data_get_parent(data)
    }

    public func getLength() -> Float {
        return spine_bone_data_get_length(data)
    }

    public func setLength(length: Float) {
        spine_bone_data_set_length(data, length)
    }

    public func getX() -> Float {
        return spine_bone_data_get_x(data)
    }

    public func setX(x: Float) {
        spine_bone_data_set_x(data, x)
    }

    public func getY() -> Float {
        return spine_bone_data_get_y(data)
    }

    public func setY(y: Float) {
        spine_bone_data_set_y(data, y)
    }

    public func getRotation() -> Float {
        return spine_bone_data_get_rotation(data)
    }

    public func setRotation(rotation: Float) {
        spine_bone_data_set_rotation(data, rotation)
    }

    public func getScaleX() -> Float {
        return spine_bone_data_get_scale_x(data)
    }

    public func setScaleX(scaleX: Float) {
        spine_bone_data_set_scale_x(data, scaleX)
    }

    public func getScaleY() -> Float {
        return spine_bone_data_get_scale_y(data)
    }

    public func setScaleY(scaleY: Float) {
        spine_bone_data_set_scale_y(data, scaleY)
    }

    public func getShearX() -> Float {
        return spine_bone_data_get_shear_x(data)
    }

    public func setShearX(shearx: Float) {
        spine_bone_data_set_shear_x(data, shearx)
    }

    public func getShearY() -> Float {
        return spine_bone_data_get_shear_y(data)
    }

    public func setShearY(shearY: Float) {
        spine_bone_data_set_shear_y(data, shearY)
    }

    public func getInherit() -> spine_inherit {
        return spine_bone_data_get_inherit(data)
    }

    public func setInherit(inherit: spine_inherit) {
        spine_bone_data_set_inherit(data, inherit)
    }

    public func isSkinRequired() -> Int32 {
        return spine_bone_data_is_skin_required(data)
    }

    public func setIsSkinRequired(isSkinRequired: Int32) {
        spine_bone_data_set_is_skin_required(data, isSkinRequired)
    }

    public func getColor() -> spine_color {
        return spine_bone_data_get_color(data)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_bone_data_set_color(data, r, g, b, a)
    }

    public func isVisible() -> Int32 {
        return spine_bone_data_is_visible(data)
    }

    public func setVisible(isVisible: Int32) {
        spine_bone_data_set_visible(data, isVisible)
    }

}

public final class SpineSlotData {

    internal let data: spine_slot_data

    internal init(data: spine_slot_data) {
        self.data = data
    }

    public func getIndex() -> Int32 {
        return spine_slot_data_get_index(data)
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_slot_data_get_name(data)
    }

    public func getBoneData() -> spine_bone_data {
        return spine_slot_data_get_bone_data(data)
    }

    public func getColor() -> spine_color {
        return spine_slot_data_get_color(data)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_data_set_color(data, r, g, b, a)
    }

    public func getDarkColor() -> spine_color {
        return spine_slot_data_get_dark_color(data)
    }

    public func setDarkColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_data_set_dark_color(data, r, g, b, a)
    }

    public func hasDarkColor() -> Int32 {
        return spine_slot_data_has_dark_color(data)
    }

    public func setHasDarkColor(hasDarkColor: Int32) {
        spine_slot_data_set_has_dark_color(data, hasDarkColor)
    }

    public func getAttachmentName() -> UnsafeMutablePointer<utf8> {
        return spine_slot_data_get_attachment_name(data)
    }

    public func setAttachmentName(attachmentName: UnsafeMutablePointer<utf8>) {
        spine_slot_data_set_attachment_name(data, attachmentName)
    }

    public func getBlendMode() -> spine_blend_mode {
        return spine_slot_data_get_blend_mode(data)
    }

    public func setBlendMode(blendMode: spine_blend_mode) {
        spine_slot_data_set_blend_mode(data, blendMode)
    }

    public func isVisible() -> Int32 {
        return spine_slot_data_is_visible(data)
    }

    public func setVisible(visible: Int32) {
        spine_slot_data_set_visible(data, visible)
    }

}

public final class SpineAnimation {

    internal let animation: spine_animation

    internal init(animation: spine_animation) {
        self.animation = animation
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_animation_get_name(animation)
    }

    public func getDuration() -> Float {
        return spine_animation_get_duration(animation)
    }

}

public final class SpineSkeleton {

    internal let skeleton: spine_skeleton

    internal init(skeleton: spine_skeleton) {
        self.skeleton = skeleton
    }

    public func updateCache() {
        spine_skeleton_update_cache(skeleton)
    }

    public func updateWorldTransform(physics: spine_physics) {
        spine_skeleton_update_world_transform(skeleton, physics)
    }

    public func updateWorldTransformBone(physics: spine_physics, parent: spine_bone) {
        spine_skeleton_update_world_transform_bone(skeleton, physics, parent)
    }

    public func setToSetupPose() {
        spine_skeleton_set_to_setup_pose(skeleton)
    }

    public func setBonesToSetupPose() {
        spine_skeleton_set_bones_to_setup_pose(skeleton)
    }

    public func setSlotsToSetupPose() {
        spine_skeleton_set_slots_to_setup_pose(skeleton)
    }

    public func findBone(boneName: UnsafeMutablePointer<utf8>) -> spine_bone {
        return spine_skeleton_find_bone(skeleton, boneName)
    }

    public func findSlot(slotName: UnsafeMutablePointer<utf8>) -> spine_slot {
        return spine_skeleton_find_slot(skeleton, slotName)
    }

    public func setSkinByName(skinName: UnsafeMutablePointer<utf8>) {
        spine_skeleton_set_skin_by_name(skeleton, skinName)
    }

    public func setSkin(skin: spine_skin) {
        spine_skeleton_set_skin(skeleton, skin)
    }

    public func getAttachmentByName(slotName: UnsafeMutablePointer<utf8>, attachmentName: UnsafeMutablePointer<utf8>) -> spine_attachment {
        return spine_skeleton_get_attachment_by_name(skeleton, slotName, attachmentName)
    }

    public func getAttachment(slotIndex: Int32, attachmentName: UnsafeMutablePointer<utf8>) -> spine_attachment {
        return spine_skeleton_get_attachment(skeleton, slotIndex, attachmentName)
    }

    public func setAttachment(slotName: UnsafeMutablePointer<utf8>, attachmentName: UnsafeMutablePointer<utf8>) {
        spine_skeleton_set_attachment(skeleton, slotName, attachmentName)
    }

    public func findIkConstraint(constraintName: UnsafeMutablePointer<utf8>) -> spine_ik_constraint {
        return spine_skeleton_find_ik_constraint(skeleton, constraintName)
    }

    public func findTransformConstraint(constraintName: UnsafeMutablePointer<utf8>) -> spine_transform_constraint {
        return spine_skeleton_find_transform_constraint(skeleton, constraintName)
    }

    public func findPathConstraint(constraintName: UnsafeMutablePointer<utf8>) -> spine_path_constraint {
        return spine_skeleton_find_path_constraint(skeleton, constraintName)
    }

    public func findPhysicsConstraint(constraintName: UnsafeMutablePointer<utf8>) -> spine_physics_constraint {
        return spine_skeleton_find_physics_constraint(skeleton, constraintName)
    }

    public func getBounds() -> spine_bounds {
        return spine_skeleton_get_bounds(skeleton)
    }

    public func getRootBone() -> spine_bone {
        return spine_skeleton_get_root_bone(skeleton)
    }

    public func getData() -> spine_skeleton_data {
        return spine_skeleton_get_data(skeleton)
    }

    public func getNumBones() -> Int32 {
        return spine_skeleton_get_num_bones(skeleton)
    }

    public func getBones() -> [spine_bone] {
        let num = Int(spine_skeleton_get_num_bones(skeleton))
        let native = spine_skeleton_get_bones(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumSlots() -> Int32 {
        return spine_skeleton_get_num_slots(skeleton)
    }

    public func getSlots() -> [spine_slot] {
        let num = Int(spine_skeleton_get_num_slots(skeleton))
        let native = spine_skeleton_get_slots(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumDrawOrder() -> Int32 {
        return spine_skeleton_get_num_draw_order(skeleton)
    }

    public func getDrawOrder() -> [spine_slot] {
        let num = Int(spine_skeleton_get_num_draw_order(skeleton))
        let native = spine_skeleton_get_draw_order(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumIkConstraints() -> Int32 {
        return spine_skeleton_get_num_ik_constraints(skeleton)
    }

    public func getIkConstraints() -> [spine_ik_constraint] {
        let num = Int(spine_skeleton_get_num_ik_constraints(skeleton))
        let native = spine_skeleton_get_ik_constraints(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumTransformConstraints() -> Int32 {
        return spine_skeleton_get_num_transform_constraints(skeleton)
    }

    public func getTransformConstraints() -> [spine_transform_constraint] {
        let num = Int(spine_skeleton_get_num_transform_constraints(skeleton))
        let native = spine_skeleton_get_transform_constraints(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumPathConstraints() -> Int32 {
        return spine_skeleton_get_num_path_constraints(skeleton)
    }

    public func getPathConstraints() -> [spine_path_constraint] {
        let num = Int(spine_skeleton_get_num_path_constraints(skeleton))
        let native = spine_skeleton_get_path_constraints(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumPhysicsConstraints() -> Int32 {
        return spine_skeleton_get_num_physics_constraints(skeleton)
    }

    public func getPhysicsConstraints() -> [spine_physics_constraint] {
        let num = Int(spine_skeleton_get_num_physics_constraints(skeleton))
        let native = spine_skeleton_get_physics_constraints(skeleton)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getSkin() -> spine_skin {
        return spine_skeleton_get_skin(skeleton)
    }

    public func getColor() -> spine_color {
        return spine_skeleton_get_color(skeleton)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_skeleton_set_color(skeleton, r, g, b, a)
    }

    public func setPosition(x: Float, y: Float) {
        spine_skeleton_set_position(skeleton, x, y)
    }

    public func getX() -> Float {
        return spine_skeleton_get_x(skeleton)
    }

    public func setX(x: Float) {
        spine_skeleton_set_x(skeleton, x)
    }

    public func getY() -> Float {
        return spine_skeleton_get_y(skeleton)
    }

    public func setY(y: Float) {
        spine_skeleton_set_y(skeleton, y)
    }

    public func getScaleX() -> Float {
        return spine_skeleton_get_scale_x(skeleton)
    }

    public func setScaleX(scaleX: Float) {
        spine_skeleton_set_scale_x(skeleton, scaleX)
    }

    public func getScaleY() -> Float {
        return spine_skeleton_get_scale_y(skeleton)
    }

    public func setScaleY(scaleY: Float) {
        spine_skeleton_set_scale_y(skeleton, scaleY)
    }

    public func getTime() -> Float {
        return spine_skeleton_get_time(skeleton)
    }

    public func setTime(time: Float) {
        spine_skeleton_set_time(skeleton, time)
    }

    public func update(delta: Float) {
        spine_skeleton_update(skeleton, delta)
    }

}

public final class SpineSequence {

    internal let sequence: spine_sequence

    internal init(sequence: spine_sequence) {
        self.sequence = sequence
    }

    public func apply(slot: spine_slot, attachment: spine_attachment) {
        spine_sequence_apply(sequence, slot, attachment)
    }

    public func getPath(basePath: UnsafeMutablePointer<utf8>, index: Int32) -> UnsafeMutablePointer<utf8> {
        return spine_sequence_get_path(sequence, basePath, index)
    }

    public func getId() -> Int32 {
        return spine_sequence_get_id(sequence)
    }

    public func setId(id: Int32) {
        spine_sequence_set_id(sequence, id)
    }

    public func getStart() -> Int32 {
        return spine_sequence_get_start(sequence)
    }

    public func setStart(start: Int32) {
        spine_sequence_set_start(sequence, start)
    }

    public func getDigits() -> Int32 {
        return spine_sequence_get_digits(sequence)
    }

    public func setDigits(digits: Int32) {
        spine_sequence_set_digits(sequence, digits)
    }

    public func getSetupIndex() -> Int32 {
        return spine_sequence_get_setup_index(sequence)
    }

    public func setSetupIndex(setupIndex: Int32) {
        spine_sequence_set_setup_index(sequence, setupIndex)
    }

    public func getNumRegions() -> Int32 {
        return spine_sequence_get_num_regions(sequence)
    }

    public func getRegions() -> [spine_texture_region] {
        let num = Int(spine_sequence_get_num_regions(sequence))
        let native = spine_sequence_get_regions(sequence)
        return (0..<num).compactMap { native?[$0] }
    }

}

public final class SpineBounds {

    internal let bounds: spine_bounds

    internal init(bounds: spine_bounds) {
        self.bounds = bounds
    }

    public func getX() -> Float {
        return spine_bounds_get_x(bounds)
    }

    public func getY() -> Float {
        return spine_bounds_get_y(bounds)
    }

    public func getWidth() -> Float {
        return spine_bounds_get_width(bounds)
    }

    public func getHeight() -> Float {
        return spine_bounds_get_height(bounds)
    }

}

public final class SpineVector {

    internal let vector: spine_vector

    internal init(vector: spine_vector) {
        self.vector = vector
    }

    public func getX() -> Float {
        return spine_vector_get_x(vector)
    }

    public func getY() -> Float {
        return spine_vector_get_y(vector)
    }

}

public final class SpineEvent {

    internal let event: spine_event

    internal init(event: spine_event) {
        self.event = event
    }

    public func getData() -> spine_event_data {
        return spine_event_get_data(event)
    }

    public func getTime() -> Float {
        return spine_event_get_time(event)
    }

    public func getIntValue() -> Int32 {
        return spine_event_get_int_value(event)
    }

    public func setIntValue(value: Int32) {
        spine_event_set_int_value(event, value)
    }

    public func getFloatValue() -> Float {
        return spine_event_get_float_value(event)
    }

    public func setFloatValue(value: Float) {
        spine_event_set_float_value(event, value)
    }

    public func getStringValue() -> UnsafeMutablePointer<utf8> {
        return spine_event_get_string_value(event)
    }

    public func setStringValue(value: UnsafeMutablePointer<utf8>) {
        spine_event_set_string_value(event, value)
    }

    public func getVolume() -> Float {
        return spine_event_get_volume(event)
    }

    public func setVolume(volume: Float) {
        spine_event_set_volume(event, volume)
    }

    public func getBalance() -> Float {
        return spine_event_get_balance(event)
    }

    public func setBalance(balance: Float) {
        spine_event_set_balance(event, balance)
    }

}

public final class SpineAtlas {

    internal let atlas: spine_atlas

    internal init(atlas: spine_atlas) {
        self.atlas = atlas
    }

    public func load(atlasData: UnsafeMutablePointer<utf8>) -> spine_atlas {
        return spine_atlas_load(atlasData)
    }

    public func getNumImagePaths() -> Int32 {
        return spine_atlas_get_num_image_paths(atlas)
    }

    public func getImagePath(index: Int32) -> UnsafeMutablePointer<utf8> {
        return spine_atlas_get_image_path(atlas, index)
    }

    public func getError() -> UnsafeMutablePointer<utf8> {
        return spine_atlas_get_error(atlas)
    }

    public func dispose() {
        spine_atlas_dispose(atlas)
    }

}

public final class SpineColor {

    internal let color: spine_color

    internal init(color: spine_color) {
        self.color = color
    }

    public func getR() -> Float {
        return spine_color_get_r(color)
    }

    public func getG() -> Float {
        return spine_color_get_g(color)
    }

    public func getB() -> Float {
        return spine_color_get_b(color)
    }

    public func getA() -> Float {
        return spine_color_get_a(color)
    }

}

public final class SpineBone {

    internal let bone: spine_bone

    internal init(bone: spine_bone) {
        self.bone = bone
    }

    public func setIsYDown(yDown: Int32) {
        spine_bone_set_is_y_down(yDown)
    }

    public func getIsYDown() -> Int32 {
        return spine_bone_get_is_y_down()
    }

    public func update() {
        spine_bone_update(bone)
    }

    public func updateWorldTransform() {
        spine_bone_update_world_transform(bone)
    }

    public func updateWorldTransformWith(x: Float, y: Float, rotation: Float, scaleX: Float, scaleY: Float, shearX: Float, shearY: Float) {
        spine_bone_update_world_transform_with(bone, x, y, rotation, scaleX, scaleY, shearX, shearY)
    }

    public func updateAppliedTransform() {
        spine_bone_update_applied_transform(bone)
    }

    public func setToSetupPose() {
        spine_bone_set_to_setup_pose(bone)
    }

    public func worldToLocal(worldX: Float, worldY: Float) -> spine_vector {
        return spine_bone_world_to_local(bone, worldX, worldY)
    }

    public func worldToParent(worldX: Float, worldY: Float) -> spine_vector {
        return spine_bone_world_to_parent(bone, worldX, worldY)
    }

    public func localToWorld(localX: Float, localY: Float) -> spine_vector {
        return spine_bone_local_to_world(bone, localX, localY)
    }

    public func parentToWorld(localX: Float, localY: Float) -> spine_vector {
        return spine_bone_parent_to_world(bone, localX, localY)
    }

    public func worldToLocalRotation(worldRotation: Float) -> Float {
        return spine_bone_world_to_local_rotation(bone, worldRotation)
    }

    public func localToWorldRotation(localRotation: Float) -> Float {
        return spine_bone_local_to_world_rotation(bone, localRotation)
    }

    public func rotateWorld(degrees: Float) {
        spine_bone_rotate_world(bone, degrees)
    }

    public func getWorldToLocalRotationX() -> Float {
        return spine_bone_get_world_to_local_rotation_x(bone)
    }

    public func getWorldToLocalRotationY() -> Float {
        return spine_bone_get_world_to_local_rotation_y(bone)
    }

    public func getData() -> spine_bone_data {
        return spine_bone_get_data(bone)
    }

    public func getSkeleton() -> spine_skeleton {
        return spine_bone_get_skeleton(bone)
    }

    public func getParent() -> spine_bone {
        return spine_bone_get_parent(bone)
    }

    public func getNumChildren() -> Int32 {
        return spine_bone_get_num_children(bone)
    }

    public func getChildren() -> [spine_bone] {
        let num = Int(spine_bone_get_num_children(bone))
        let native = spine_bone_get_children(bone)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getX() -> Float {
        return spine_bone_get_x(bone)
    }

    public func setX(x: Float) {
        spine_bone_set_x(bone, x)
    }

    public func getY() -> Float {
        return spine_bone_get_y(bone)
    }

    public func setY(y: Float) {
        spine_bone_set_y(bone, y)
    }

    public func getRotation() -> Float {
        return spine_bone_get_rotation(bone)
    }

    public func setRotation(rotation: Float) {
        spine_bone_set_rotation(bone, rotation)
    }

    public func getScaleX() -> Float {
        return spine_bone_get_scale_x(bone)
    }

    public func setScaleX(scaleX: Float) {
        spine_bone_set_scale_x(bone, scaleX)
    }

    public func getScaleY() -> Float {
        return spine_bone_get_scale_y(bone)
    }

    public func setScaleY(scaleY: Float) {
        spine_bone_set_scale_y(bone, scaleY)
    }

    public func getShearX() -> Float {
        return spine_bone_get_shear_x(bone)
    }

    public func setShearX(shearX: Float) {
        spine_bone_set_shear_x(bone, shearX)
    }

    public func getShearY() -> Float {
        return spine_bone_get_shear_y(bone)
    }

    public func setShearY(shearY: Float) {
        spine_bone_set_shear_y(bone, shearY)
    }

    public func getAppliedRotation() -> Float {
        return spine_bone_get_applied_rotation(bone)
    }

    public func setAppliedRotation(rotation: Float) {
        spine_bone_set_applied_rotation(bone, rotation)
    }

    public func getAX() -> Float {
        return spine_bone_get_a_x(bone)
    }

    public func setAX(x: Float) {
        spine_bone_set_a_x(bone, x)
    }

    public func getAY() -> Float {
        return spine_bone_get_a_y(bone)
    }

    public func setAY(y: Float) {
        spine_bone_set_a_y(bone, y)
    }

    public func getAScaleX() -> Float {
        return spine_bone_get_a_scale_x(bone)
    }

    public func setAScaleX(scaleX: Float) {
        spine_bone_set_a_scale_x(bone, scaleX)
    }

    public func getAScaleY() -> Float {
        return spine_bone_get_a_scale_y(bone)
    }

    public func setAScaleY(scaleY: Float) {
        spine_bone_set_a_scale_y(bone, scaleY)
    }

    public func getAShearX() -> Float {
        return spine_bone_get_a_shear_x(bone)
    }

    public func setAShearX(shearX: Float) {
        spine_bone_set_a_shear_x(bone, shearX)
    }

    public func getAShearY() -> Float {
        return spine_bone_get_a_shear_y(bone)
    }

    public func setAShearY(shearY: Float) {
        spine_bone_set_a_shear_y(bone, shearY)
    }

    public func getA() -> Float {
        return spine_bone_get_a(bone)
    }

    public func setA(a: Float) {
        spine_bone_set_a(bone, a)
    }

    public func getB() -> Float {
        return spine_bone_get_b(bone)
    }

    public func setB(b: Float) {
        spine_bone_set_b(bone, b)
    }

    public func getC() -> Float {
        return spine_bone_get_c(bone)
    }

    public func setC(c: Float) {
        spine_bone_set_c(bone, c)
    }

    public func getD() -> Float {
        return spine_bone_get_d(bone)
    }

    public func setD(d: Float) {
        spine_bone_set_d(bone, d)
    }

    public func getWorldX() -> Float {
        return spine_bone_get_world_x(bone)
    }

    public func setWorldX(worldX: Float) {
        spine_bone_set_world_x(bone, worldX)
    }

    public func getWorldY() -> Float {
        return spine_bone_get_world_y(bone)
    }

    public func setWorldY(worldY: Float) {
        spine_bone_set_world_y(bone, worldY)
    }

    public func getWorldRotationX() -> Float {
        return spine_bone_get_world_rotation_x(bone)
    }

    public func getWorldRotationY() -> Float {
        return spine_bone_get_world_rotation_y(bone)
    }

    public func getWorldScaleX() -> Float {
        return spine_bone_get_world_scale_x(bone)
    }

    public func getWorldScaleY() -> Float {
        return spine_bone_get_world_scale_y(bone)
    }

    public func getIsActive() -> Int32 {
        return spine_bone_get_is_active(bone)
    }

    public func setIsActive(isActive: Int32) {
        spine_bone_set_is_active(bone, isActive)
    }

    public func getInherit() -> spine_inherit {
        return spine_bone_get_inherit(bone)
    }

    public func setInherit(inherit: spine_inherit) {
        spine_bone_set_inherit(bone, inherit)
    }

}

public final class SpineSlot {

    internal let slot: spine_slot

    internal init(slot: spine_slot) {
        self.slot = slot
    }

    public func setToSetupPose() {
        spine_slot_set_to_setup_pose(slot)
    }

    public func getData() -> spine_slot_data {
        return spine_slot_get_data(slot)
    }

    public func getBone() -> spine_bone {
        return spine_slot_get_bone(slot)
    }

    public func getSkeleton() -> spine_skeleton {
        return spine_slot_get_skeleton(slot)
    }

    public func getColor() -> spine_color {
        return spine_slot_get_color(slot)
    }

    public func setColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_set_color(slot, r, g, b, a)
    }

    public func getDarkColor() -> spine_color {
        return spine_slot_get_dark_color(slot)
    }

    public func setDarkColor(r: Float, g: Float, b: Float, a: Float) {
        spine_slot_set_dark_color(slot, r, g, b, a)
    }

    public func hasDarkColor() -> Int32 {
        return spine_slot_has_dark_color(slot)
    }

    public func getAttachment() -> spine_attachment {
        return spine_slot_get_attachment(slot)
    }

    public func setAttachment(attachment: spine_attachment) {
        spine_slot_set_attachment(slot, attachment)
    }

    public func getSequenceIndex() -> Int32 {
        return spine_slot_get_sequence_index(slot)
    }

    public func setSequenceIndex(sequenceIndex: Int32) {
        spine_slot_set_sequence_index(slot, sequenceIndex)
    }

}

public final class SpineSkin {

    internal let skin: spine_skin

    internal init(skin: spine_skin) {
        self.skin = skin
    }

    public func setAttachment(slotIndex: Int32, name: UnsafeMutablePointer<utf8>, attachment: spine_attachment) {
        spine_skin_set_attachment(skin, slotIndex, name, attachment)
    }

    public func getAttachment(slotIndex: Int32, name: UnsafeMutablePointer<utf8>) -> spine_attachment {
        return spine_skin_get_attachment(skin, slotIndex, name)
    }

    public func removeAttachment(slotIndex: Int32, name: UnsafeMutablePointer<utf8>) {
        spine_skin_remove_attachment(skin, slotIndex, name)
    }

    public func getName() -> UnsafeMutablePointer<utf8> {
        return spine_skin_get_name(skin)
    }

    public func addSkin(other: spine_skin) {
        spine_skin_add_skin(skin, other)
    }

    public func copySkin(other: spine_skin) {
        spine_skin_copy_skin(skin, other)
    }

    public func getEntries() -> spine_skin_entries {
        return spine_skin_get_entries(skin)
    }

    public func getNumBones() -> Int32 {
        return spine_skin_get_num_bones(skin)
    }

    public func getBones() -> [spine_bone_data] {
        let num = Int(spine_skin_get_num_bones(skin))
        let native = spine_skin_get_bones(skin)
        return (0..<num).compactMap { native?[$0] }
    }

    public func getNumConstraints() -> Int32 {
        return spine_skin_get_num_constraints(skin)
    }

    public func getConstraints() -> [spine_constraint_data] {
        let num = Int(spine_skin_get_num_constraints(skin))
        let native = spine_skin_get_constraints(skin)
        return (0..<num).compactMap { native?[$0] }
    }

    public func create(name: UnsafeMutablePointer<utf8>) -> spine_skin {
        return spine_skin_create(name)
    }

    public func dispose() {
        spine_skin_dispose(skin)
    }

}

