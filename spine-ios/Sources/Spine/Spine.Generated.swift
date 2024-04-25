import Foundation
import SpineWrapper

public final class SpineTransformConstraintData {

    public func getNumBones(data: spine_transform_constraint_data) -> Int32 {
        return spine_transform_constraint_data_get_num_bones(data)
    }

    public func getBones(data: spine_transform_constraint_data) -> spine_bone_data * {
        return spine_transform_constraint_data_get_bones(data)
    }

    public func getTarget(data: spine_transform_constraint_data) -> spine_bone_data {
        return spine_transform_constraint_data_get_target(data)
    }

    public func setTarget(data: spine_transform_constraint_data, target: spine_bone_data) {
        spine_transform_constraint_data_set_target(data, target)
    }

    public func getMixRotate(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_mix_rotate(data)
    }

    public func setMixRotate(data: spine_transform_constraint_data, mixRotate: Float) {
        spine_transform_constraint_data_set_mix_rotate(data, mixRotate)
    }

    public func getMixX(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_mix_x(data)
    }

    public func setMixX(data: spine_transform_constraint_data, mixX: Float) {
        spine_transform_constraint_data_set_mix_x(data, mixX)
    }

    public func getMixY(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_mix_y(data)
    }

    public func setMixY(data: spine_transform_constraint_data, mixY: Float) {
        spine_transform_constraint_data_set_mix_y(data, mixY)
    }

    public func getMixScaleX(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_mix_scale_x(data)
    }

    public func setMixScaleX(data: spine_transform_constraint_data, mixScaleX: Float) {
        spine_transform_constraint_data_set_mix_scale_x(data, mixScaleX)
    }

    public func getMixScaleY(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_mix_scale_y(data)
    }

    public func setMixScaleY(data: spine_transform_constraint_data, mixScaleY: Float) {
        spine_transform_constraint_data_set_mix_scale_y(data, mixScaleY)
    }

    public func getMixShearY(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_mix_shear_y(data)
    }

    public func setMixShearY(data: spine_transform_constraint_data, mixShearY: Float) {
        spine_transform_constraint_data_set_mix_shear_y(data, mixShearY)
    }

    public func getOffsetRotation(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_offset_rotation(data)
    }

    public func setOffsetRotation(data: spine_transform_constraint_data, offsetRotation: Float) {
        spine_transform_constraint_data_set_offset_rotation(data, offsetRotation)
    }

    public func getOffsetX(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_offset_x(data)
    }

    public func setOffsetX(data: spine_transform_constraint_data, offsetX: Float) {
        spine_transform_constraint_data_set_offset_x(data, offsetX)
    }

    public func getOffsetY(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_offset_y(data)
    }

    public func setOffsetY(data: spine_transform_constraint_data, offsetY: Float) {
        spine_transform_constraint_data_set_offset_y(data, offsetY)
    }

    public func getOffsetScaleX(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_offset_scale_x(data)
    }

    public func setOffsetScaleX(data: spine_transform_constraint_data, offsetScaleX: Float) {
        spine_transform_constraint_data_set_offset_scale_x(data, offsetScaleX)
    }

    public func getOffsetScaleY(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_offset_scale_y(data)
    }

    public func setOffsetScaleY(data: spine_transform_constraint_data, offsetScaleY: Float) {
        spine_transform_constraint_data_set_offset_scale_y(data, offsetScaleY)
    }

    public func getOffsetShearY(data: spine_transform_constraint_data) -> Float {
        return spine_transform_constraint_data_get_offset_shear_y(data)
    }

    public func setOffsetShearY(data: spine_transform_constraint_data, offsetShearY: Float) {
        spine_transform_constraint_data_set_offset_shear_y(data, offsetShearY)
    }

    public func getIsRelative(data: spine_transform_constraint_data) -> Int32 {
        return spine_transform_constraint_data_get_is_relative(data)
    }

    public func setIsRelative(data: spine_transform_constraint_data, isRelative: Int32) {
        spine_transform_constraint_data_set_is_relative(data, isRelative)
    }

    public func getIsLocal(data: spine_transform_constraint_data) -> Int32 {
        return spine_transform_constraint_data_get_is_local(data)
    }

    public func setIsLocal(data: spine_transform_constraint_data, isLocal: Int32) {
        spine_transform_constraint_data_set_is_local(data, isLocal)
    }

}

public final class SpineBoundingBoxAttachment {

    public func getColor(attachment: spine_bounding_box_attachment) -> spine_color {
        return spine_bounding_box_attachment_get_color(attachment)
    }

    public func setColor(attachment: spine_bounding_box_attachment, r: Float, g: Float, b: Float, a: Float) {
        spine_bounding_box_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpinePhysicsConstraintData {

    public func setBone(data: spine_physics_constraint_data, bone: spine_bone_data) {
        spine_physics_constraint_data_set_bone(data, bone)
    }

    public func getBone(data: spine_physics_constraint_data) -> spine_bone_data {
        return spine_physics_constraint_data_get_bone(data)
    }

    public func setX(data: spine_physics_constraint_data, x: Float) {
        spine_physics_constraint_data_set_x(data, x)
    }

    public func getX(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_x(data)
    }

    public func setY(data: spine_physics_constraint_data, y: Float) {
        spine_physics_constraint_data_set_y(data, y)
    }

    public func getY(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_y(data)
    }

    public func setRotate(data: spine_physics_constraint_data, rotate: Float) {
        spine_physics_constraint_data_set_rotate(data, rotate)
    }

    public func getRotate(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_rotate(data)
    }

    public func setScaleX(data: spine_physics_constraint_data, scaleX: Float) {
        spine_physics_constraint_data_set_scale_x(data, scaleX)
    }

    public func getScaleX(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_scale_x(data)
    }

    public func setShearX(data: spine_physics_constraint_data, shearX: Float) {
        spine_physics_constraint_data_set_shear_x(data, shearX)
    }

    public func getShearX(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_shear_x(data)
    }

    public func setLimit(data: spine_physics_constraint_data, limit: Float) {
        spine_physics_constraint_data_set_limit(data, limit)
    }

    public func getLimit(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_limit(data)
    }

    public func setStep(data: spine_physics_constraint_data, step: Float) {
        spine_physics_constraint_data_set_step(data, step)
    }

    public func getStep(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_step(data)
    }

    public func setInertia(data: spine_physics_constraint_data, inertia: Float) {
        spine_physics_constraint_data_set_inertia(data, inertia)
    }

    public func getInertia(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_inertia(data)
    }

    public func setStrength(data: spine_physics_constraint_data, strength: Float) {
        spine_physics_constraint_data_set_strength(data, strength)
    }

    public func getStrength(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_strength(data)
    }

    public func setDamping(data: spine_physics_constraint_data, damping: Float) {
        spine_physics_constraint_data_set_damping(data, damping)
    }

    public func getDamping(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_damping(data)
    }

    public func setMassInverse(data: spine_physics_constraint_data, massInverse: Float) {
        spine_physics_constraint_data_set_mass_inverse(data, massInverse)
    }

    public func getMassInverse(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_mass_inverse(data)
    }

    public func setWind(data: spine_physics_constraint_data, wind: Float) {
        spine_physics_constraint_data_set_wind(data, wind)
    }

    public func getWind(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_wind(data)
    }

    public func setGravity(data: spine_physics_constraint_data, gravity: Float) {
        spine_physics_constraint_data_set_gravity(data, gravity)
    }

    public func getGravity(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_gravity(data)
    }

    public func setMix(data: spine_physics_constraint_data, mix: Float) {
        spine_physics_constraint_data_set_mix(data, mix)
    }

    public func getMix(data: spine_physics_constraint_data) -> Float {
        return spine_physics_constraint_data_get_mix(data)
    }

    public func setInertiaGlobal(data: spine_physics_constraint_data, inertiaGlobal: Int32) {
        spine_physics_constraint_data_set_inertia_global(data, inertiaGlobal)
    }

    public func isInertiaGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_inertia_global(data)
    }

    public func setStrengthGlobal(data: spine_physics_constraint_data, strengthGlobal: Int32) {
        spine_physics_constraint_data_set_strength_global(data, strengthGlobal)
    }

    public func isStrengthGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_strength_global(data)
    }

    public func setDampingGlobal(data: spine_physics_constraint_data, dampingGlobal: Int32) {
        spine_physics_constraint_data_set_damping_global(data, dampingGlobal)
    }

    public func isDampingGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_damping_global(data)
    }

    public func setMassGlobal(data: spine_physics_constraint_data, massGlobal: Int32) {
        spine_physics_constraint_data_set_mass_global(data, massGlobal)
    }

    public func isMassGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_mass_global(data)
    }

    public func setWindGlobal(data: spine_physics_constraint_data, windGlobal: Int32) {
        spine_physics_constraint_data_set_wind_global(data, windGlobal)
    }

    public func isWindGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_wind_global(data)
    }

    public func setGravityGlobal(data: spine_physics_constraint_data, gravityGlobal: Int32) {
        spine_physics_constraint_data_set_gravity_global(data, gravityGlobal)
    }

    public func isGravityGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_gravity_global(data)
    }

    public func setMixGlobal(data: spine_physics_constraint_data, mixGlobal: Int32) {
        spine_physics_constraint_data_set_mix_global(data, mixGlobal)
    }

    public func isMixGlobal(data: spine_physics_constraint_data) -> Int32 {
        return spine_physics_constraint_data_is_mix_global(data)
    }

}

public final class SpineAnimationStateEvents {

    public func getNumEvents(events: spine_animation_state_events) -> Int32 {
        return spine_animation_state_events_get_num_events(events)
    }

    public func getEventType(events: spine_animation_state_events, index: Int32) -> spine_event_type {
        return spine_animation_state_events_get_event_type(events, index)
    }

    public func getTrackEntry(events: spine_animation_state_events, index: Int32) -> spine_track_entry {
        return spine_animation_state_events_get_track_entry(events, index)
    }

    public func getEvent(events: spine_animation_state_events, index: Int32) -> spine_event {
        return spine_animation_state_events_get_event(events, index)
    }

    public func reset(events: spine_animation_state_events) {
        spine_animation_state_events_reset(events)
    }

}

public final class SpineTransformConstraint {

    public func update(constraint: spine_transform_constraint) {
        spine_transform_constraint_update(constraint)
    }

    public func getOrder(constraint: spine_transform_constraint) -> Int32 {
        return spine_transform_constraint_get_order(constraint)
    }

    public func getData(constraint: spine_transform_constraint) -> spine_transform_constraint_data {
        return spine_transform_constraint_get_data(constraint)
    }

    public func getNumBones(constraint: spine_transform_constraint) -> Int32 {
        return spine_transform_constraint_get_num_bones(constraint)
    }

    public func getBones(constraint: spine_transform_constraint) -> spine_bone * {
        return spine_transform_constraint_get_bones(constraint)
    }

    public func getTarget(constraint: spine_transform_constraint) -> spine_bone {
        return spine_transform_constraint_get_target(constraint)
    }

    public func setTarget(constraint: spine_transform_constraint, target: spine_bone) {
        spine_transform_constraint_set_target(constraint, target)
    }

    public func getMixRotate(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_mix_rotate(constraint)
    }

    public func setMixRotate(constraint: spine_transform_constraint, mixRotate: Float) {
        spine_transform_constraint_set_mix_rotate(constraint, mixRotate)
    }

    public func getMixX(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_mix_x(constraint)
    }

    public func setMixX(constraint: spine_transform_constraint, mixX: Float) {
        spine_transform_constraint_set_mix_x(constraint, mixX)
    }

    public func getMixY(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_mix_y(constraint)
    }

    public func setMixY(constraint: spine_transform_constraint, mixY: Float) {
        spine_transform_constraint_set_mix_y(constraint, mixY)
    }

    public func getMixScaleX(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_mix_scale_x(constraint)
    }

    public func setMixScaleX(constraint: spine_transform_constraint, mixScaleX: Float) {
        spine_transform_constraint_set_mix_scale_x(constraint, mixScaleX)
    }

    public func getMixScaleY(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_mix_scale_y(constraint)
    }

    public func setMixScaleY(constraint: spine_transform_constraint, mixScaleY: Float) {
        spine_transform_constraint_set_mix_scale_y(constraint, mixScaleY)
    }

    public func getMixShearY(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_mix_shear_y(constraint)
    }

    public func setMixShearY(constraint: spine_transform_constraint, mixShearY: Float) {
        spine_transform_constraint_set_mix_shear_y(constraint, mixShearY)
    }

    public func getIsActive(constraint: spine_transform_constraint) -> Float {
        return spine_transform_constraint_get_is_active(constraint)
    }

    public func setIsActive(constraint: spine_transform_constraint, isActive: Int32) {
        spine_transform_constraint_set_is_active(constraint, isActive)
    }

}

public final class SpinePathConstraintData {

    public func getNumBones(data: spine_path_constraint_data) -> Int32 {
        return spine_path_constraint_data_get_num_bones(data)
    }

    public func getBones(data: spine_path_constraint_data) -> spine_bone_data * {
        return spine_path_constraint_data_get_bones(data)
    }

    public func getTarget(data: spine_path_constraint_data) -> spine_slot_data {
        return spine_path_constraint_data_get_target(data)
    }

    public func setTarget(data: spine_path_constraint_data, target: spine_slot_data) {
        spine_path_constraint_data_set_target(data, target)
    }

    public func getPositionMode(data: spine_path_constraint_data) -> spine_position_mode {
        return spine_path_constraint_data_get_position_mode(data)
    }

    public func setPositionMode(data: spine_path_constraint_data, positionMode: spine_position_mode) {
        spine_path_constraint_data_set_position_mode(data, positionMode)
    }

    public func getSpacingMode(data: spine_path_constraint_data) -> spine_spacing_mode {
        return spine_path_constraint_data_get_spacing_mode(data)
    }

    public func setSpacingMode(data: spine_path_constraint_data, spacingMode: spine_spacing_mode) {
        spine_path_constraint_data_set_spacing_mode(data, spacingMode)
    }

    public func getRotateMode(data: spine_path_constraint_data) -> spine_rotate_mode {
        return spine_path_constraint_data_get_rotate_mode(data)
    }

    public func setRotateMode(data: spine_path_constraint_data, rotateMode: spine_rotate_mode) {
        spine_path_constraint_data_set_rotate_mode(data, rotateMode)
    }

    public func getOffsetRotation(data: spine_path_constraint_data) -> Float {
        return spine_path_constraint_data_get_offset_rotation(data)
    }

    public func setOffsetRotation(data: spine_path_constraint_data, offsetRotation: Float) {
        spine_path_constraint_data_set_offset_rotation(data, offsetRotation)
    }

    public func getPosition(data: spine_path_constraint_data) -> Float {
        return spine_path_constraint_data_get_position(data)
    }

    public func setPosition(data: spine_path_constraint_data, position: Float) {
        spine_path_constraint_data_set_position(data, position)
    }

    public func getSpacing(data: spine_path_constraint_data) -> Float {
        return spine_path_constraint_data_get_spacing(data)
    }

    public func setSpacing(data: spine_path_constraint_data, spacing: Float) {
        spine_path_constraint_data_set_spacing(data, spacing)
    }

    public func getMixRotate(data: spine_path_constraint_data) -> Float {
        return spine_path_constraint_data_get_mix_rotate(data)
    }

    public func setMixRotate(data: spine_path_constraint_data, mixRotate: Float) {
        spine_path_constraint_data_set_mix_rotate(data, mixRotate)
    }

    public func getMixX(data: spine_path_constraint_data) -> Float {
        return spine_path_constraint_data_get_mix_x(data)
    }

    public func setMixX(data: spine_path_constraint_data, mixX: Float) {
        spine_path_constraint_data_set_mix_x(data, mixX)
    }

    public func getMixY(data: spine_path_constraint_data) -> Float {
        return spine_path_constraint_data_get_mix_y(data)
    }

    public func setMixY(data: spine_path_constraint_data, mixY: Float) {
        spine_path_constraint_data_set_mix_y(data, mixY)
    }

}

public final class SpineAnimationStateData {

    public func getSkeletonData(stateData: spine_animation_state_data) -> spine_skeleton_data {
        return spine_animation_state_data_get_skeleton_data(stateData)
    }

    public func getDefaultMix(stateData: spine_animation_state_data) -> Float {
        return spine_animation_state_data_get_default_mix(stateData)
    }

    public func setDefaultMix(stateData: spine_animation_state_data, defaultMix: Float) {
        spine_animation_state_data_set_default_mix(stateData, defaultMix)
    }

    public func setMix(stateData: spine_animation_state_data, from: spine_animation, to: spine_animation, duration: Float) {
        spine_animation_state_data_set_mix(stateData, from, to, duration)
    }

    public func getMix(stateData: spine_animation_state_data, from: spine_animation, to: spine_animation) -> Float {
        return spine_animation_state_data_get_mix(stateData, from, to)
    }

    public func setMixByName(stateData: spine_animation_state_data, fromName: UnsafeMutablePointer<utf8>, toName: UnsafeMutablePointer<utf8>, duration: Float) {
        spine_animation_state_data_set_mix_by_name(stateData, fromName, toName, duration)
    }

    public func getMixByName(stateData: spine_animation_state_data, fromName: UnsafeMutablePointer<utf8>, toName: UnsafeMutablePointer<utf8>) -> Float {
        return spine_animation_state_data_get_mix_by_name(stateData, fromName, toName)
    }

    public func clear(stateData: spine_animation_state_data) {
        spine_animation_state_data_clear(stateData)
    }

}

public final class SpineSkeletonDataResult {

    public func getError(result: spine_skeleton_data_result) -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_result_get_error(result)
    }

    public func getData(result: spine_skeleton_data_result) -> spine_skeleton_data {
        return spine_skeleton_data_result_get_data(result)
    }

    public func dispose(result: spine_skeleton_data_result) {
        spine_skeleton_data_result_dispose(result)
    }

}

public final class SpineClippingAttachment {

    public func getEndSlot(attachment: spine_clipping_attachment) -> spine_slot_data {
        return spine_clipping_attachment_get_end_slot(attachment)
    }

    public func setEndSlot(attachment: spine_clipping_attachment, endSlot: spine_slot_data) {
        spine_clipping_attachment_set_end_slot(attachment, endSlot)
    }

    public func getColor(attachment: spine_clipping_attachment) -> spine_color {
        return spine_clipping_attachment_get_color(attachment)
    }

    public func setColor(attachment: spine_clipping_attachment, r: Float, g: Float, b: Float, a: Float) {
        spine_clipping_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpineIkConstraintData {

    public func getNumBones(data: spine_ik_constraint_data) -> Int32 {
        let test = spine_ik_constraint_data_get_bones(data)
        return spine_ik_constraint_data_get_num_bones(data)
    }

    public func getBones(data: spine_ik_constraint_data) -> spine_bone_data * {
        let test = spine_ik_constraint_data_get_bones(data)
        return spine_ik_constraint_data_get_bones(data)
    }

    public func getTarget(data: spine_ik_constraint_data) -> spine_bone_data {
        return spine_ik_constraint_data_get_target(data)
    }

    public func setTarget(data: spine_ik_constraint_data, target: spine_bone_data) {
        spine_ik_constraint_data_set_target(data, target)
    }

    public func getBendDirection(data: spine_ik_constraint_data) -> Int32 {
        return spine_ik_constraint_data_get_bend_direction(data)
    }

    public func setBendDirection(data: spine_ik_constraint_data, bendDirection: Int32) {
        spine_ik_constraint_data_set_bend_direction(data, bendDirection)
    }

    public func getCompress(data: spine_ik_constraint_data) -> Int32 {
        return spine_ik_constraint_data_get_compress(data)
    }

    public func setCompress(data: spine_ik_constraint_data, compress: Int32) {
        spine_ik_constraint_data_set_compress(data, compress)
    }

    public func getStretch(data: spine_ik_constraint_data) -> Int32 {
        return spine_ik_constraint_data_get_stretch(data)
    }

    public func setStretch(data: spine_ik_constraint_data, stretch: Int32) {
        spine_ik_constraint_data_set_stretch(data, stretch)
    }

    public func getUniform(data: spine_ik_constraint_data) -> Int32 {
        return spine_ik_constraint_data_get_uniform(data)
    }

    public func setUniform(data: spine_ik_constraint_data, uniform: Int32) {
        spine_ik_constraint_data_set_uniform(data, uniform)
    }

    public func getMix(data: spine_ik_constraint_data) -> Float {
        return spine_ik_constraint_data_get_mix(data)
    }

    public func setMix(data: spine_ik_constraint_data, mix: Float) {
        spine_ik_constraint_data_set_mix(data, mix)
    }

    public func getSoftness(data: spine_ik_constraint_data) -> Float {
        return spine_ik_constraint_data_get_softness(data)
    }

    public func setSoftness(data: spine_ik_constraint_data, softness: Float) {
        spine_ik_constraint_data_set_softness(data, softness)
    }

}

public final class SpinePhysicsConstraint {

    public func setBone(constraint: spine_physics_constraint, bone: spine_bone) {
        spine_physics_constraint_set_bone(constraint, bone)
    }

    public func getBone(constraint: spine_physics_constraint) -> spine_bone {
        return spine_physics_constraint_get_bone(constraint)
    }

    public func setInertia(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_inertia(constraint, value)
    }

    public func getInertia(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_inertia(constraint)
    }

    public func setStrength(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_strength(constraint, value)
    }

    public func getStrength(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_strength(constraint)
    }

    public func setDamping(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_damping(constraint, value)
    }

    public func getDamping(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_damping(constraint)
    }

    public func setMassInverse(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_mass_inverse(constraint, value)
    }

    public func getMassInverse(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_mass_inverse(constraint)
    }

    public func setWind(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_wind(constraint, value)
    }

    public func getWind(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_wind(constraint)
    }

    public func setGravity(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_gravity(constraint, value)
    }

    public func getGravity(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_gravity(constraint)
    }

    public func setMix(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_mix(constraint, value)
    }

    public func getMix(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_mix(constraint)
    }

    public func setReset(constraint: spine_physics_constraint, value: Int32) {
        spine_physics_constraint_set_reset(constraint, value)
    }

    public func getReset(constraint: spine_physics_constraint) -> Int32 {
        return spine_physics_constraint_get_reset(constraint)
    }

    public func setUx(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_ux(constraint, value)
    }

    public func getUx(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_ux(constraint)
    }

    public func setUy(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_uy(constraint, value)
    }

    public func getUy(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_uy(constraint)
    }

    public func setCx(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_cx(constraint, value)
    }

    public func getCx(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_cx(constraint)
    }

    public func setCy(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_cy(constraint, value)
    }

    public func getCy(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_cy(constraint)
    }

    public func setTx(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_tx(constraint, value)
    }

    public func getTx(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_tx(constraint)
    }

    public func setTy(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_ty(constraint, value)
    }

    public func getTy(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_ty(constraint)
    }

    public func setXOffset(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_x_offset(constraint, value)
    }

    public func getXOffset(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_x_offset(constraint)
    }

    public func setXVelocity(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_x_velocity(constraint, value)
    }

    public func getXVelocity(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_x_velocity(constraint)
    }

    public func setYOffset(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_y_offset(constraint, value)
    }

    public func getYOffset(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_y_offset(constraint)
    }

    public func setYVelocity(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_y_velocity(constraint, value)
    }

    public func getYVelocity(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_y_velocity(constraint)
    }

    public func setRotateOffset(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_rotate_offset(constraint, value)
    }

    public func getRotateOffset(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_rotate_offset(constraint)
    }

    public func setRotateVelocity(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_rotate_velocity(constraint, value)
    }

    public func getRotateVelocity(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_rotate_velocity(constraint)
    }

    public func setScaleOffset(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_scale_offset(constraint, value)
    }

    public func getScaleOffset(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_scale_offset(constraint)
    }

    public func setScaleVelocity(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_scale_velocity(constraint, value)
    }

    public func getScaleVelocity(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_scale_velocity(constraint)
    }

    public func setActive(constraint: spine_physics_constraint, value: Int32) {
        spine_physics_constraint_set_active(constraint, value)
    }

    public func isActive(constraint: spine_physics_constraint) -> Int32 {
        return spine_physics_constraint_is_active(constraint)
    }

    public func setRemaining(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_remaining(constraint, value)
    }

    public func getRemaining(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_remaining(constraint)
    }

    public func setLastTime(constraint: spine_physics_constraint, value: Float) {
        spine_physics_constraint_set_last_time(constraint, value)
    }

    public func getLastTime(constraint: spine_physics_constraint) -> Float {
        return spine_physics_constraint_get_last_time(constraint)
    }

    public func reset(constraint: spine_physics_constraint) {
        spine_physics_constraint_reset(constraint)
    }

    public func update(data: spine_physics_constraint, physics: spine_physics) {
        spine_physics_constraint_update(data, physics)
    }

    public func translate(data: spine_physics_constraint, x: Float, y: Float) {
        spine_physics_constraint_translate(data, x, y)
    }

    public func rotate(data: spine_physics_constraint, x: Float, y: Float, degrees: Float) {
        spine_physics_constraint_rotate(data, x, y, degrees)
    }

}

public final class SpineRegionAttachment {

    public func updateRegion(attachment: spine_region_attachment) {
        spine_region_attachment_update_region(attachment)
    }

    public func computeWorldVertices(attachment: spine_region_attachment, slot: spine_slot, worldVertices: UnsafeMutablePointer<Float>) {
        spine_region_attachment_compute_world_vertices(attachment, slot, worldVertices)
    }

    public func getX(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_x(attachment)
    }

    public func setX(attachment: spine_region_attachment, x: Float) {
        spine_region_attachment_set_x(attachment, x)
    }

    public func getY(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_y(attachment)
    }

    public func setY(attachment: spine_region_attachment, y: Float) {
        spine_region_attachment_set_y(attachment, y)
    }

    public func getRotation(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_rotation(attachment)
    }

    public func setRotation(attachment: spine_region_attachment, rotation: Float) {
        spine_region_attachment_set_rotation(attachment, rotation)
    }

    public func getScaleX(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_scale_x(attachment)
    }

    public func setScaleX(attachment: spine_region_attachment, scaleX: Float) {
        spine_region_attachment_set_scale_x(attachment, scaleX)
    }

    public func getScaleY(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_scale_y(attachment)
    }

    public func setScaleY(attachment: spine_region_attachment, scaleY: Float) {
        spine_region_attachment_set_scale_y(attachment, scaleY)
    }

    public func getWidth(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_width(attachment)
    }

    public func setWidth(attachment: spine_region_attachment, width: Float) {
        spine_region_attachment_set_width(attachment, width)
    }

    public func getHeight(attachment: spine_region_attachment) -> Float {
        return spine_region_attachment_get_height(attachment)
    }

    public func setHeight(attachment: spine_region_attachment, height: Float) {
        spine_region_attachment_set_height(attachment, height)
    }

    public func getColor(attachment: spine_region_attachment) -> spine_color {
        return spine_region_attachment_get_color(attachment)
    }

    public func setColor(attachment: spine_region_attachment, r: Float, g: Float, b: Float, a: Float) {
        spine_region_attachment_set_color(attachment, r, g, b, a)
    }

    public func getPath(attachment: spine_region_attachment) -> UnsafeMutablePointer<utf8> {
        return spine_region_attachment_get_path(attachment)
    }

    public func getRegion(attachment: spine_region_attachment) -> spine_texture_region {
        return spine_region_attachment_get_region(attachment)
    }

    public func getSequence(attachment: spine_region_attachment) -> spine_sequence {
        return spine_region_attachment_get_sequence(attachment)
    }

    public func getNumOffset(attachment: spine_region_attachment) -> Int32 {
        return spine_region_attachment_get_num_offset(attachment)
    }

    public func getOffset(attachment: spine_region_attachment) -> UnsafeMutablePointer<Float> {
        return spine_region_attachment_get_offset(attachment)
    }

    public func getNumUvs(attachment: spine_region_attachment) -> Int32 {
        return spine_region_attachment_get_num_uvs(attachment)
    }

    public func getUvs(attachment: spine_region_attachment) -> UnsafeMutablePointer<Float> {
        return spine_region_attachment_get_uvs(attachment)
    }

}

public final class SpineVertexAttachment {

    public func getWorldVerticesLength(attachment: spine_vertex_attachment) -> Int32 {
        return spine_vertex_attachment_get_world_vertices_length(attachment)
    }

    public func computeWorldVertices(attachment: spine_vertex_attachment, slot: spine_slot, worldVertices: UnsafeMutablePointer<Float>) {
        spine_vertex_attachment_compute_world_vertices(attachment, slot, worldVertices)
    }

    public func getNumBones(attachment: spine_vertex_attachment) -> Int32 {
        return spine_vertex_attachment_get_num_bones(attachment)
    }

    public func getBones(attachment: spine_vertex_attachment) -> int32_t * {
        return spine_vertex_attachment_get_bones(attachment)
    }

    public func getNumVertices(attachment: spine_vertex_attachment) -> Int32 {
        return spine_vertex_attachment_get_num_vertices(attachment)
    }

    public func getVertices(attachment: spine_vertex_attachment) -> UnsafeMutablePointer<Float> {
        return spine_vertex_attachment_get_vertices(attachment)
    }

    public func getTimelineAttachment(timelineAttachment: spine_vertex_attachment) -> spine_attachment {
        return spine_vertex_attachment_get_timeline_attachment(timelineAttachment)
    }

    public func setTimelineAttachment(attachment: spine_vertex_attachment, timelineAttachment: spine_attachment) {
        spine_vertex_attachment_set_timeline_attachment(attachment, timelineAttachment)
    }

}

public final class SpineSkeletonDrawable {

    public func create(skeletonData: spine_skeleton_data) -> spine_skeleton_drawable {
        return spine_skeleton_drawable_create(skeletonData)
    }

    public func render(drawable: spine_skeleton_drawable) -> spine_render_command {
        return spine_skeleton_drawable_render(drawable)
    }

    public func dispose(drawable: spine_skeleton_drawable) {
        spine_skeleton_drawable_dispose(drawable)
    }

    public func getSkeleton(drawable: spine_skeleton_drawable) -> spine_skeleton {
        return spine_skeleton_drawable_get_skeleton(drawable)
    }

    public func getAnimationState(drawable: spine_skeleton_drawable) -> spine_animation_state {
        return spine_skeleton_drawable_get_animation_state(drawable)
    }

    public func getAnimationStateData(drawable: spine_skeleton_drawable) -> spine_animation_state_data {
        return spine_skeleton_drawable_get_animation_state_data(drawable)
    }

    public func getAnimationStateEvents(drawable: spine_skeleton_drawable) -> spine_animation_state_events {
        return spine_skeleton_drawable_get_animation_state_events(drawable)
    }

}

public final class SpinePointAttachment {

    public func computeWorldPosition(attachment: spine_point_attachment, bone: spine_bone) -> spine_vector {
        return spine_point_attachment_compute_world_position(attachment, bone)
    }

    public func computeWorldRotation(attachment: spine_point_attachment, bone: spine_bone) -> Float {
        return spine_point_attachment_compute_world_rotation(attachment, bone)
    }

    public func getX(attachment: spine_point_attachment) -> Float {
        return spine_point_attachment_get_x(attachment)
    }

    public func setX(attachment: spine_point_attachment, x: Float) {
        spine_point_attachment_set_x(attachment, x)
    }

    public func getY(attachment: spine_point_attachment) -> Float {
        return spine_point_attachment_get_y(attachment)
    }

    public func setY(attachment: spine_point_attachment, y: Float) {
        spine_point_attachment_set_y(attachment, y)
    }

    public func getRotation(attachment: spine_point_attachment) -> Float {
        return spine_point_attachment_get_rotation(attachment)
    }

    public func setRotation(attachment: spine_point_attachment, rotation: Float) {
        spine_point_attachment_set_rotation(attachment, rotation)
    }

    public func getColor(attachment: spine_point_attachment) -> spine_color {
        return spine_point_attachment_get_color(attachment)
    }

    public func setColor(attachment: spine_point_attachment, r: Float, g: Float, b: Float, a: Float) {
        spine_point_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpineMeshAttachment {

    public func updateRegion(attachment: spine_mesh_attachment) {
        spine_mesh_attachment_update_region(attachment)
    }

    public func getHullLength(attachment: spine_mesh_attachment) -> Int32 {
        return spine_mesh_attachment_get_hull_length(attachment)
    }

    public func setHullLength(attachment: spine_mesh_attachment, hullLength: Int32) {
        spine_mesh_attachment_set_hull_length(attachment, hullLength)
    }

    public func getNumRegionUvs(attachment: spine_mesh_attachment) -> Int32 {
        return spine_mesh_attachment_get_num_region_uvs(attachment)
    }

    public func getRegionUvs(attachment: spine_mesh_attachment) -> UnsafeMutablePointer<Float> {
        return spine_mesh_attachment_get_region_uvs(attachment)
    }

    public func getNumUvs(attachment: spine_mesh_attachment) -> Int32 {
        return spine_mesh_attachment_get_num_uvs(attachment)
    }

    public func getUvs(attachment: spine_mesh_attachment) -> UnsafeMutablePointer<Float> {
        return spine_mesh_attachment_get_uvs(attachment)
    }

    public func getNumTriangles(attachment: spine_mesh_attachment) -> Int32 {
        return spine_mesh_attachment_get_num_triangles(attachment)
    }

    public func getTriangles(attachment: spine_mesh_attachment) -> uint16_t * {
        return spine_mesh_attachment_get_triangles(attachment)
    }

    public func getColor(attachment: spine_mesh_attachment) -> spine_color {
        return spine_mesh_attachment_get_color(attachment)
    }

    public func setColor(attachment: spine_mesh_attachment, r: Float, g: Float, b: Float, a: Float) {
        spine_mesh_attachment_set_color(attachment, r, g, b, a)
    }

    public func getPath(attachment: spine_mesh_attachment) -> UnsafeMutablePointer<utf8> {
        return spine_mesh_attachment_get_path(attachment)
    }

    public func getRegion(attachment: spine_mesh_attachment) -> spine_texture_region {
        return spine_mesh_attachment_get_region(attachment)
    }

    public func getSequence(attachment: spine_mesh_attachment) -> spine_sequence {
        return spine_mesh_attachment_get_sequence(attachment)
    }

    public func getParentMesh(attachment: spine_mesh_attachment) -> spine_mesh_attachment {
        return spine_mesh_attachment_get_parent_mesh(attachment)
    }

    public func setParentMesh(attachment: spine_mesh_attachment, parentMesh: spine_mesh_attachment) {
        spine_mesh_attachment_set_parent_mesh(attachment, parentMesh)
    }

    public func getNumEdges(attachment: spine_mesh_attachment) -> Int32 {
        return spine_mesh_attachment_get_num_edges(attachment)
    }

    public func getEdges(attachment: spine_mesh_attachment) -> uint16_t * {
        return spine_mesh_attachment_get_edges(attachment)
    }

    public func getWidth(attachment: spine_mesh_attachment) -> Float {
        return spine_mesh_attachment_get_width(attachment)
    }

    public func setWidth(attachment: spine_mesh_attachment, width: Float) {
        spine_mesh_attachment_set_width(attachment, width)
    }

    public func getHeight(attachment: spine_mesh_attachment) -> Float {
        return spine_mesh_attachment_get_height(attachment)
    }

    public func setHeight(attachment: spine_mesh_attachment, height: Float) {
        spine_mesh_attachment_set_height(attachment, height)
    }

}

public final class SpinePathAttachment {

    public func getNumLengths(attachment: spine_path_attachment) -> Int32 {
        return spine_path_attachment_get_num_lengths(attachment)
    }

    public func getLengths(attachment: spine_path_attachment) -> UnsafeMutablePointer<Float> {
        return spine_path_attachment_get_lengths(attachment)
    }

    public func getIsClosed(attachment: spine_path_attachment) -> Int32 {
        return spine_path_attachment_get_is_closed(attachment)
    }

    public func setIsClosed(attachment: spine_path_attachment, isClosed: Int32) {
        spine_path_attachment_set_is_closed(attachment, isClosed)
    }

    public func getIsConstantSpeed(attachment: spine_path_attachment) -> Int32 {
        return spine_path_attachment_get_is_constant_speed(attachment)
    }

    public func setIsConstantSpeed(attachment: spine_path_attachment, isConstantSpeed: Int32) {
        spine_path_attachment_set_is_constant_speed(attachment, isConstantSpeed)
    }

    public func getColor(attachment: spine_path_attachment) -> spine_color {
        return spine_path_attachment_get_color(attachment)
    }

    public func setColor(attachment: spine_path_attachment, r: Float, g: Float, b: Float, a: Float) {
        spine_path_attachment_set_color(attachment, r, g, b, a)
    }

}

public final class SpineConstraintData {

    public func getType(data: spine_constraint_data) -> spine_constraint_type {
        return spine_constraint_data_get_type(data)
    }

    public func getName(data: spine_constraint_data) -> UnsafeMutablePointer<utf8> {
        return spine_constraint_data_get_name(data)
    }

    public func getOrder(data: spine_constraint_data) -> UInt64 {
        return spine_constraint_data_get_order(data)
    }

    public func setOrder(data: spine_constraint_data, order: UInt64) {
        spine_constraint_data_set_order(data, order)
    }

    public func getIsSkinRequired(data: spine_constraint_data) -> Int32 {
        return spine_constraint_data_get_is_skin_required(data)
    }

    public func setIsSkinRequired(data: spine_constraint_data, isSkinRequired: Int32) {
        spine_constraint_data_set_is_skin_required(data, isSkinRequired)
    }

}

public final class SpinePathConstraint {

    public func update(constraint: spine_path_constraint) {
        spine_path_constraint_update(constraint)
    }

    public func getOrder(constraint: spine_path_constraint) -> Int32 {
        return spine_path_constraint_get_order(constraint)
    }

    public func getData(constraint: spine_path_constraint) -> spine_path_constraint_data {
        return spine_path_constraint_get_data(constraint)
    }

    public func getNumBones(constraint: spine_path_constraint) -> Int32 {
        return spine_path_constraint_get_num_bones(constraint)
    }

    public func getBones(constraint: spine_path_constraint) -> spine_bone * {
        return spine_path_constraint_get_bones(constraint)
    }

    public func getTarget(constraint: spine_path_constraint) -> spine_slot {
        return spine_path_constraint_get_target(constraint)
    }

    public func setTarget(constraint: spine_path_constraint, target: spine_slot) {
        spine_path_constraint_set_target(constraint, target)
    }

    public func getPosition(constraint: spine_path_constraint) -> Float {
        return spine_path_constraint_get_position(constraint)
    }

    public func setPosition(constraint: spine_path_constraint, position: Float) {
        spine_path_constraint_set_position(constraint, position)
    }

    public func getSpacing(constraint: spine_path_constraint) -> Float {
        return spine_path_constraint_get_spacing(constraint)
    }

    public func setSpacing(constraint: spine_path_constraint, spacing: Float) {
        spine_path_constraint_set_spacing(constraint, spacing)
    }

    public func getMixRotate(constraint: spine_path_constraint) -> Float {
        return spine_path_constraint_get_mix_rotate(constraint)
    }

    public func setMixRotate(constraint: spine_path_constraint, mixRotate: Float) {
        spine_path_constraint_set_mix_rotate(constraint, mixRotate)
    }

    public func getMixX(constraint: spine_path_constraint) -> Float {
        return spine_path_constraint_get_mix_x(constraint)
    }

    public func setMixX(constraint: spine_path_constraint, mixX: Float) {
        spine_path_constraint_set_mix_x(constraint, mixX)
    }

    public func getMixY(constraint: spine_path_constraint) -> Float {
        return spine_path_constraint_get_mix_y(constraint)
    }

    public func setMixY(constraint: spine_path_constraint, mixY: Float) {
        spine_path_constraint_set_mix_y(constraint, mixY)
    }

    public func getIsActive(constraint: spine_path_constraint) -> Int32 {
        return spine_path_constraint_get_is_active(constraint)
    }

    public func setIsActive(constraint: spine_path_constraint, isActive: Int32) {
        spine_path_constraint_set_is_active(constraint, isActive)
    }

}

public final class SpineAnimationState {

    public func update(state: spine_animation_state, delta: Float) {
        spine_animation_state_update(state, delta)
    }

    public func apply(state: spine_animation_state, skeleton: spine_skeleton) {
        spine_animation_state_apply(state, skeleton)
    }

    public func clearTracks(state: spine_animation_state) {
        spine_animation_state_clear_tracks(state)
    }

    public func clearTrack(state: spine_animation_state, trackIndex: Int32) {
        spine_animation_state_clear_track(state, trackIndex)
    }

    public func getNumTracks(state: spine_animation_state) -> Int32 {
        return spine_animation_state_get_num_tracks(state)
    }

    public func setAnimationByName(state: spine_animation_state, trackIndex: Int32, animationName: UnsafeMutablePointer<utf8>, loop: Int32) -> spine_track_entry {
        return spine_animation_state_set_animation_by_name(state, trackIndex, animationName, loop)
    }

    public func setAnimation(state: spine_animation_state, trackIndex: Int32, animation: spine_animation, loop: Int32) -> spine_track_entry {
        return spine_animation_state_set_animation(state, trackIndex, animation, loop)
    }

    public func addAnimationByName(state: spine_animation_state, trackIndex: Int32, animationName: UnsafeMutablePointer<utf8>, loop: Int32, delay: Float) -> spine_track_entry {
        return spine_animation_state_add_animation_by_name(state, trackIndex, animationName, loop, delay)
    }

    public func addAnimation(state: spine_animation_state, trackIndex: Int32, animation: spine_animation, loop: Int32, delay: Float) -> spine_track_entry {
        return spine_animation_state_add_animation(state, trackIndex, animation, loop, delay)
    }

    public func setEmptyAnimation(state: spine_animation_state, trackIndex: Int32, mixDuration: Float) -> spine_track_entry {
        return spine_animation_state_set_empty_animation(state, trackIndex, mixDuration)
    }

    public func addEmptyAnimation(state: spine_animation_state, trackIndex: Int32, mixDuration: Float, delay: Float) -> spine_track_entry {
        return spine_animation_state_add_empty_animation(state, trackIndex, mixDuration, delay)
    }

    public func setEmptyAnimations(state: spine_animation_state, mixDuration: Float) {
        spine_animation_state_set_empty_animations(state, mixDuration)
    }

    public func getCurrent(state: spine_animation_state, trackIndex: Int32) -> spine_track_entry {
        return spine_animation_state_get_current(state, trackIndex)
    }

    public func getData(state: spine_animation_state) -> spine_animation_state_data {
        return spine_animation_state_get_data(state)
    }

    public func getTimeScale(state: spine_animation_state) -> Float {
        return spine_animation_state_get_time_scale(state)
    }

    public func setTimeScale(state: spine_animation_state, timeScale: Float) {
        spine_animation_state_set_time_scale(state, timeScale)
    }

    public func disposeTrackEntry(state: spine_animation_state, entry: spine_track_entry) {
        spine_animation_state_dispose_track_entry(state, entry)
    }

}

public final class SpineTextureRegion {

    public func getTexture(textureRegion: spine_texture_region) -> UnsafeMutableRawPointer {
        return spine_texture_region_get_texture(textureRegion)
    }

    public func setTexture(textureRegion: spine_texture_region, texture: UnsafeMutableRawPointer) {
        spine_texture_region_set_texture(textureRegion, texture)
    }

    public func getU(textureRegion: spine_texture_region) -> Float {
        return spine_texture_region_get_u(textureRegion)
    }

    public func setU(textureRegion: spine_texture_region, u: Float) {
        spine_texture_region_set_u(textureRegion, u)
    }

    public func getV(textureRegion: spine_texture_region) -> Float {
        return spine_texture_region_get_v(textureRegion)
    }

    public func setV(textureRegion: spine_texture_region, v: Float) {
        spine_texture_region_set_v(textureRegion, v)
    }

    public func getU2(textureRegion: spine_texture_region) -> Float {
        return spine_texture_region_get_u2(textureRegion)
    }

    public func setU2(textureRegion: spine_texture_region, u2: Float) {
        spine_texture_region_set_u2(textureRegion, u2)
    }

    public func getV2(textureRegion: spine_texture_region) -> Float {
        return spine_texture_region_get_v2(textureRegion)
    }

    public func setV2(textureRegion: spine_texture_region, v2: Float) {
        spine_texture_region_set_v2(textureRegion, v2)
    }

    public func getDegrees(textureRegion: spine_texture_region) -> Int32 {
        return spine_texture_region_get_degrees(textureRegion)
    }

    public func setDegrees(textureRegion: spine_texture_region, degrees: Int32) {
        spine_texture_region_set_degrees(textureRegion, degrees)
    }

    public func getOffsetX(textureRegion: spine_texture_region) -> Float {
        return spine_texture_region_get_offset_x(textureRegion)
    }

    public func setOffsetX(textureRegion: spine_texture_region, offsetX: Float) {
        spine_texture_region_set_offset_x(textureRegion, offsetX)
    }

    public func getOffsetY(textureRegion: spine_texture_region) -> Float {
        return spine_texture_region_get_offset_y(textureRegion)
    }

    public func setOffsetY(textureRegion: spine_texture_region, offsetY: Float) {
        spine_texture_region_set_offset_y(textureRegion, offsetY)
    }

    public func getWidth(textureRegion: spine_texture_region) -> Int32 {
        return spine_texture_region_get_width(textureRegion)
    }

    public func setWidth(textureRegion: spine_texture_region, width: Int32) {
        spine_texture_region_set_width(textureRegion, width)
    }

    public func getHeight(textureRegion: spine_texture_region) -> Int32 {
        return spine_texture_region_get_height(textureRegion)
    }

    public func setHeight(textureRegion: spine_texture_region, height: Int32) {
        spine_texture_region_set_height(textureRegion, height)
    }

    public func getOriginalWidth(textureRegion: spine_texture_region) -> Int32 {
        return spine_texture_region_get_original_width(textureRegion)
    }

    public func setOriginalWidth(textureRegion: spine_texture_region, originalWidth: Int32) {
        spine_texture_region_set_original_width(textureRegion, originalWidth)
    }

    public func getOriginalHeight(textureRegion: spine_texture_region) -> Int32 {
        return spine_texture_region_get_original_height(textureRegion)
    }

    public func setOriginalHeight(textureRegion: spine_texture_region, originalHeight: Int32) {
        spine_texture_region_set_original_height(textureRegion, originalHeight)
    }

}

public final class SpineRenderCommand {

    public func getPositions(command: spine_render_command) -> UnsafeMutablePointer<Float> {
        return spine_render_command_get_positions(command)
    }

    public func getUvs(command: spine_render_command) -> UnsafeMutablePointer<Float> {
        return spine_render_command_get_uvs(command)
    }

    public func getColors(command: spine_render_command) -> int32_t * {
        return spine_render_command_get_colors(command)
    }

    public func getNumVertices(command: spine_render_command) -> Int32 {
        return spine_render_command_get_num_vertices(command)
    }

    public func getIndices(command: spine_render_command) -> uint16_t * {
        return spine_render_command_get_indices(command)
    }

    public func getNumIndices(command: spine_render_command) -> Int32 {
        return spine_render_command_get_num_indices(command)
    }

    public func getAtlasPage(command: spine_render_command) -> Int32 {
        return spine_render_command_get_atlas_page(command)
    }

    public func getBlendMode(command: spine_render_command) -> spine_blend_mode {
        return spine_render_command_get_blend_mode(command)
    }

    public func getNext(command: spine_render_command) -> spine_render_command {
        return spine_render_command_get_next(command)
    }

}

public final class SpineSkeletonData {

    public func loadJson(atlas: spine_atlas, skeletonData: UnsafeMutablePointer<utf8>) -> spine_skeleton_data_result {
        return spine_skeleton_data_load_json(atlas, skeletonData)
    }

    public func loadBinary(atlas: spine_atlas, skeletonData: const uint8_t *, length: Int32) -> spine_skeleton_data_result {
        return spine_skeleton_data_load_binary(atlas, skeletonData, length)
    }

    public func findBone(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_bone_data {
        return spine_skeleton_data_find_bone(data, name)
    }

    public func findSlot(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_slot_data {
        return spine_skeleton_data_find_slot(data, name)
    }

    public func findSkin(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_skin {
        return spine_skeleton_data_find_skin(data, name)
    }

    public func findEvent(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_event_data {
        return spine_skeleton_data_find_event(data, name)
    }

    public func findAnimation(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_animation {
        return spine_skeleton_data_find_animation(data, name)
    }

    public func findIkConstraint(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_ik_constraint_data {
        return spine_skeleton_data_find_ik_constraint(data, name)
    }

    public func findTransformConstraint(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_transform_constraint_data {
        return spine_skeleton_data_find_transform_constraint(data, name)
    }

    public func findPathConstraint(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_path_constraint_data {
        return spine_skeleton_data_find_path_constraint(data, name)
    }

    public func findPhysicsConstraint(data: spine_skeleton_data, name: UnsafeMutablePointer<utf8>) -> spine_physics_constraint_data {
        return spine_skeleton_data_find_physics_constraint(data, name)
    }

    public func getName(data: spine_skeleton_data) -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_name(data)
    }

    public func getNumBones(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_bones(data)
    }

    public func getBones(data: spine_skeleton_data) -> spine_bone_data * {
        return spine_skeleton_data_get_bones(data)
    }

    public func getNumSlots(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_slots(data)
    }

    public func getSlots(data: spine_skeleton_data) -> spine_slot_data * {
        return spine_skeleton_data_get_slots(data)
    }

    public func getNumSkins(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_skins(data)
    }

    public func getSkins(data: spine_skeleton_data) -> spine_skin * {
        return spine_skeleton_data_get_skins(data)
    }

    public func getDefaultSkin(data: spine_skeleton_data) -> spine_skin {
        return spine_skeleton_data_get_default_skin(data)
    }

    public func setDefaultSkin(data: spine_skeleton_data, skin: spine_skin) {
        spine_skeleton_data_set_default_skin(data, skin)
    }

    public func getNumEvents(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_events(data)
    }

    public func getEvents(data: spine_skeleton_data) -> spine_event_data * {
        return spine_skeleton_data_get_events(data)
    }

    public func getNumAnimations(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_animations(data)
    }

    public func getAnimations(data: spine_skeleton_data) -> spine_animation * {
        return spine_skeleton_data_get_animations(data)
    }

    public func getNumIkConstraints(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_ik_constraints(data)
    }

    public func getIkConstraints(data: spine_skeleton_data) -> spine_ik_constraint_data * {
        return spine_skeleton_data_get_ik_constraints(data)
    }

    public func getNumTransformConstraints(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_transform_constraints(data)
    }

    public func getTransformConstraints(data: spine_skeleton_data) -> spine_transform_constraint_data * {
        return spine_skeleton_data_get_transform_constraints(data)
    }

    public func getNumPathConstraints(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_path_constraints(data)
    }

    public func getPathConstraints(data: spine_skeleton_data) -> spine_path_constraint_data * {
        return spine_skeleton_data_get_path_constraints(data)
    }

    public func getNumPhysicsConstraints(data: spine_skeleton_data) -> Int32 {
        return spine_skeleton_data_get_num_physics_constraints(data)
    }

    public func getPhysicsConstraints(data: spine_skeleton_data) -> spine_physics_constraint_data * {
        return spine_skeleton_data_get_physics_constraints(data)
    }

    public func getX(data: spine_skeleton_data) -> Float {
        return spine_skeleton_data_get_x(data)
    }

    public func setX(data: spine_skeleton_data, x: Float) {
        spine_skeleton_data_set_x(data, x)
    }

    public func getY(data: spine_skeleton_data) -> Float {
        return spine_skeleton_data_get_y(data)
    }

    public func setY(data: spine_skeleton_data, y: Float) {
        spine_skeleton_data_set_y(data, y)
    }

    public func getWidth(data: spine_skeleton_data) -> Float {
        return spine_skeleton_data_get_width(data)
    }

    public func setWidth(data: spine_skeleton_data, width: Float) {
        spine_skeleton_data_set_width(data, width)
    }

    public func getHeight(data: spine_skeleton_data) -> Float {
        return spine_skeleton_data_get_height(data)
    }

    public func setHeight(data: spine_skeleton_data, height: Float) {
        spine_skeleton_data_set_height(data, height)
    }

    public func getVersion(data: spine_skeleton_data) -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_version(data)
    }

    public func getHash(data: spine_skeleton_data) -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_hash(data)
    }

    public func getImagesPath(data: spine_skeleton_data) -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_images_path(data)
    }

    public func getAudioPath(data: spine_skeleton_data) -> UnsafeMutablePointer<utf8> {
        return spine_skeleton_data_get_audio_path(data)
    }

    public func getFps(data: spine_skeleton_data) -> Float {
        return spine_skeleton_data_get_fps(data)
    }

    public func getReferenceScale(data: spine_skeleton_data) -> Float {
        return spine_skeleton_data_get_reference_scale(data)
    }

    public func dispose(data: spine_skeleton_data) {
        spine_skeleton_data_dispose(data)
    }

}

public final class SpineIkConstraint {

    public func update(constraint: spine_ik_constraint) {
        spine_ik_constraint_update(constraint)
    }

    public func getOrder(constraint: spine_ik_constraint) -> Int32 {
        return spine_ik_constraint_get_order(constraint)
    }

    public func getData(constraint: spine_ik_constraint) -> spine_ik_constraint_data {
        return spine_ik_constraint_get_data(constraint)
    }

    public func getNumBones(constraint: spine_ik_constraint) -> Int32 {
        return spine_ik_constraint_get_num_bones(constraint)
    }

    public func getBones(constraint: spine_ik_constraint) -> spine_bone * {
        return spine_ik_constraint_get_bones(constraint)
    }

    public func getTarget(constraint: spine_ik_constraint) -> spine_bone {
        return spine_ik_constraint_get_target(constraint)
    }

    public func setTarget(constraint: spine_ik_constraint, target: spine_bone) {
        spine_ik_constraint_set_target(constraint, target)
    }

    public func getBendDirection(constraint: spine_ik_constraint) -> Int32 {
        return spine_ik_constraint_get_bend_direction(constraint)
    }

    public func setBendDirection(constraint: spine_ik_constraint, bendDirection: Int32) {
        spine_ik_constraint_set_bend_direction(constraint, bendDirection)
    }

    public func getCompress(constraint: spine_ik_constraint) -> Int32 {
        return spine_ik_constraint_get_compress(constraint)
    }

    public func setCompress(constraint: spine_ik_constraint, compress: Int32) {
        spine_ik_constraint_set_compress(constraint, compress)
    }

    public func getStretch(constraint: spine_ik_constraint) -> Int32 {
        return spine_ik_constraint_get_stretch(constraint)
    }

    public func setStretch(constraint: spine_ik_constraint, stretch: Int32) {
        spine_ik_constraint_set_stretch(constraint, stretch)
    }

    public func getMix(constraint: spine_ik_constraint) -> Float {
        return spine_ik_constraint_get_mix(constraint)
    }

    public func setMix(constraint: spine_ik_constraint, mix: Float) {
        spine_ik_constraint_set_mix(constraint, mix)
    }

    public func getSoftness(constraint: spine_ik_constraint) -> Float {
        return spine_ik_constraint_get_softness(constraint)
    }

    public func setSoftness(constraint: spine_ik_constraint, softness: Float) {
        spine_ik_constraint_set_softness(constraint, softness)
    }

    public func getIsActive(constraint: spine_ik_constraint) -> Int32 {
        return spine_ik_constraint_get_is_active(constraint)
    }

    public func setIsActive(constraint: spine_ik_constraint, isActive: Int32) {
        spine_ik_constraint_set_is_active(constraint, isActive)
    }

}

public final class SpineSkinEntries {

    public func getNumEntries(entries: spine_skin_entries) -> Int32 {
        return spine_skin_entries_get_num_entries(entries)
    }

    public func getEntry(entries: spine_skin_entries, index: Int32) -> spine_skin_entry {
        return spine_skin_entries_get_entry(entries, index)
    }

    public func dispose(entries: spine_skin_entries) {
        spine_skin_entries_dispose(entries)
    }

}

public final class SpineTrackEntry {

    public func getTrackIndex(entry: spine_track_entry) -> Int32 {
        return spine_track_entry_get_track_index(entry)
    }

    public func getAnimation(entry: spine_track_entry) -> spine_animation {
        return spine_track_entry_get_animation(entry)
    }

    public func getPrevious(entry: spine_track_entry) -> spine_track_entry {
        return spine_track_entry_get_previous(entry)
    }

    public func getLoop(entry: spine_track_entry) -> Int32 {
        return spine_track_entry_get_loop(entry)
    }

    public func setLoop(entry: spine_track_entry, loop: Int32) {
        spine_track_entry_set_loop(entry, loop)
    }

    public func getHoldPrevious(entry: spine_track_entry) -> Int32 {
        return spine_track_entry_get_hold_previous(entry)
    }

    public func setHoldPrevious(entry: spine_track_entry, holdPrevious: Int32) {
        spine_track_entry_set_hold_previous(entry, holdPrevious)
    }

    public func getReverse(entry: spine_track_entry) -> Int32 {
        return spine_track_entry_get_reverse(entry)
    }

    public func setReverse(entry: spine_track_entry, reverse: Int32) {
        spine_track_entry_set_reverse(entry, reverse)
    }

    public func getShortestRotation(entry: spine_track_entry) -> Int32 {
        return spine_track_entry_get_shortest_rotation(entry)
    }

    public func setShortestRotation(entry: spine_track_entry, shortestRotation: Int32) {
        spine_track_entry_set_shortest_rotation(entry, shortestRotation)
    }

    public func getDelay(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_delay(entry)
    }

    public func setDelay(entry: spine_track_entry, delay: Float) {
        spine_track_entry_set_delay(entry, delay)
    }

    public func getTrackTime(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_track_time(entry)
    }

    public func setTrackTime(entry: spine_track_entry, trackTime: Float) {
        spine_track_entry_set_track_time(entry, trackTime)
    }

    public func getTrackEnd(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_track_end(entry)
    }

    public func setTrackEnd(entry: spine_track_entry, trackEnd: Float) {
        spine_track_entry_set_track_end(entry, trackEnd)
    }

    public func getAnimationStart(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_animation_start(entry)
    }

    public func setAnimationStart(entry: spine_track_entry, animationStart: Float) {
        spine_track_entry_set_animation_start(entry, animationStart)
    }

    public func getAnimationEnd(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_animation_end(entry)
    }

    public func setAnimationEnd(entry: spine_track_entry, animationEnd: Float) {
        spine_track_entry_set_animation_end(entry, animationEnd)
    }

    public func getAnimationLast(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_animation_last(entry)
    }

    public func setAnimationLast(entry: spine_track_entry, animationLast: Float) {
        spine_track_entry_set_animation_last(entry, animationLast)
    }

    public func getAnimationTime(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_animation_time(entry)
    }

    public func getTimeScale(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_time_scale(entry)
    }

    public func setTimeScale(entry: spine_track_entry, timeScale: Float) {
        spine_track_entry_set_time_scale(entry, timeScale)
    }

    public func getAlpha(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_alpha(entry)
    }

    public func setAlpha(entry: spine_track_entry, alpha: Float) {
        spine_track_entry_set_alpha(entry, alpha)
    }

    public func getEventThreshold(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_event_threshold(entry)
    }

    public func setEventThreshold(entry: spine_track_entry, eventThreshold: Float) {
        spine_track_entry_set_event_threshold(entry, eventThreshold)
    }

    public func getAlphaAttachmentThreshold(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_alpha_attachment_threshold(entry)
    }

    public func setAlphaAttachmentThreshold(entry: spine_track_entry, attachmentThreshold: Float) {
        spine_track_entry_set_alpha_attachment_threshold(entry, attachmentThreshold)
    }

    public func getMixAttachmentThreshold(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_mix_attachment_threshold(entry)
    }

    public func setMixAttachmentThreshold(entry: spine_track_entry, attachmentThreshold: Float) {
        spine_track_entry_set_mix_attachment_threshold(entry, attachmentThreshold)
    }

    public func getMixDrawOrderThreshold(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_mix_draw_order_threshold(entry)
    }

    public func setMixDrawOrderThreshold(entry: spine_track_entry, drawOrderThreshold: Float) {
        spine_track_entry_set_mix_draw_order_threshold(entry, drawOrderThreshold)
    }

    public func getNext(entry: spine_track_entry) -> spine_track_entry {
        return spine_track_entry_get_next(entry)
    }

    public func isComplete(entry: spine_track_entry) -> Int32 {
        return spine_track_entry_is_complete(entry)
    }

    public func getMixTime(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_mix_time(entry)
    }

    public func setMixTime(entry: spine_track_entry, mixTime: Float) {
        spine_track_entry_set_mix_time(entry, mixTime)
    }

    public func getMixDuration(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_mix_duration(entry)
    }

    public func setMixDuration(entry: spine_track_entry, mixDuration: Float) {
        spine_track_entry_set_mix_duration(entry, mixDuration)
    }

    public func getMixBlend(entry: spine_track_entry) -> spine_mix_blend {
        return spine_track_entry_get_mix_blend(entry)
    }

    public func setMixBlend(entry: spine_track_entry, mixBlend: spine_mix_blend) {
        spine_track_entry_set_mix_blend(entry, mixBlend)
    }

    public func getMixingFrom(entry: spine_track_entry) -> spine_track_entry {
        return spine_track_entry_get_mixing_from(entry)
    }

    public func getMixingTo(entry: spine_track_entry) -> spine_track_entry {
        return spine_track_entry_get_mixing_to(entry)
    }

    public func resetRotationDirections(entry: spine_track_entry) {
        spine_track_entry_reset_rotation_directions(entry)
    }

    public func getTrackComplete(entry: spine_track_entry) -> Float {
        return spine_track_entry_get_track_complete(entry)
    }

}

public final class SpineAttachment {

    public func getName(attachment: spine_attachment) -> UnsafeMutablePointer<utf8> {
        return spine_attachment_get_name(attachment)
    }

    public func getType(attachment: spine_attachment) -> spine_attachment_type {
        return spine_attachment_get_type(attachment)
    }

    public func copy(attachment: spine_attachment) -> spine_attachment {
        return spine_attachment_copy(attachment)
    }

    public func dispose(attachment: spine_attachment) {
        spine_attachment_dispose(attachment)
    }

}

public final class SpineConstraint {

}

public final class SpineEventData {

    public func getName(event: spine_event_data) -> UnsafeMutablePointer<utf8> {
        return spine_event_data_get_name(event)
    }

    public func getIntValue(event: spine_event_data) -> Int32 {
        return spine_event_data_get_int_value(event)
    }

    public func setIntValue(event: spine_event_data, value: Int32) {
        spine_event_data_set_int_value(event, value)
    }

    public func getFloatValue(event: spine_event_data) -> Float {
        return spine_event_data_get_float_value(event)
    }

    public func setFloatValue(event: spine_event_data, value: Float) {
        spine_event_data_set_float_value(event, value)
    }

    public func getStringValue(event: spine_event_data) -> UnsafeMutablePointer<utf8> {
        return spine_event_data_get_string_value(event)
    }

    public func setStringValue(event: spine_event_data, value: UnsafeMutablePointer<utf8>) {
        spine_event_data_set_string_value(event, value)
    }

    public func getAudioPath(event: spine_event_data) -> UnsafeMutablePointer<utf8> {
        return spine_event_data_get_audio_path(event)
    }

    public func getVolume(event: spine_event_data) -> Float {
        return spine_event_data_get_volume(event)
    }

    public func setVolume(event: spine_event_data, volume: Float) {
        spine_event_data_set_volume(event, volume)
    }

    public func getBalance(event: spine_event_data) -> Float {
        return spine_event_data_get_balance(event)
    }

    public func setBalance(event: spine_event_data, balance: Float) {
        spine_event_data_set_balance(event, balance)
    }

}

public final class SpineSkinEntry {

    public func getSlotIndex(entry: spine_skin_entry) -> Int32 {
        return spine_skin_entry_get_slot_index(entry)
    }

    public func getName(entry: spine_skin_entry) -> UnsafeMutablePointer<utf8> {
        return spine_skin_entry_get_name(entry)
    }

    public func getAttachment(entry: spine_skin_entry) -> spine_attachment {
        return spine_skin_entry_get_attachment(entry)
    }

}

public final class SpineBoneData {

    public func getIndex(data: spine_bone_data) -> Int32 {
        return spine_bone_data_get_index(data)
    }

    public func getName(data: spine_bone_data) -> UnsafeMutablePointer<utf8> {
        return spine_bone_data_get_name(data)
    }

    public func getParent(data: spine_bone_data) -> spine_bone_data {
        return spine_bone_data_get_parent(data)
    }

    public func getLength(data: spine_bone_data) -> Float {
        return spine_bone_data_get_length(data)
    }

    public func setLength(data: spine_bone_data, length: Float) {
        spine_bone_data_set_length(data, length)
    }

    public func getX(data: spine_bone_data) -> Float {
        return spine_bone_data_get_x(data)
    }

    public func setX(data: spine_bone_data, x: Float) {
        spine_bone_data_set_x(data, x)
    }

    public func getY(data: spine_bone_data) -> Float {
        return spine_bone_data_get_y(data)
    }

    public func setY(data: spine_bone_data, y: Float) {
        spine_bone_data_set_y(data, y)
    }

    public func getRotation(data: spine_bone_data) -> Float {
        return spine_bone_data_get_rotation(data)
    }

    public func setRotation(data: spine_bone_data, rotation: Float) {
        spine_bone_data_set_rotation(data, rotation)
    }

    public func getScaleX(data: spine_bone_data) -> Float {
        return spine_bone_data_get_scale_x(data)
    }

    public func setScaleX(data: spine_bone_data, scaleX: Float) {
        spine_bone_data_set_scale_x(data, scaleX)
    }

    public func getScaleY(data: spine_bone_data) -> Float {
        return spine_bone_data_get_scale_y(data)
    }

    public func setScaleY(data: spine_bone_data, scaleY: Float) {
        spine_bone_data_set_scale_y(data, scaleY)
    }

    public func getShearX(data: spine_bone_data) -> Float {
        return spine_bone_data_get_shear_x(data)
    }

    public func setShearX(data: spine_bone_data, shearx: Float) {
        spine_bone_data_set_shear_x(data, shearx)
    }

    public func getShearY(data: spine_bone_data) -> Float {
        return spine_bone_data_get_shear_y(data)
    }

    public func setShearY(data: spine_bone_data, shearY: Float) {
        spine_bone_data_set_shear_y(data, shearY)
    }

    public func getInherit(data: spine_bone_data) -> spine_inherit {
        return spine_bone_data_get_inherit(data)
    }

    public func setInherit(data: spine_bone_data, inherit: spine_inherit) {
        spine_bone_data_set_inherit(data, inherit)
    }

    public func isSkinRequired(data: spine_bone_data) -> Int32 {
        return spine_bone_data_is_skin_required(data)
    }

    public func setIsSkinRequired(data: spine_bone_data, isSkinRequired: Int32) {
        spine_bone_data_set_is_skin_required(data, isSkinRequired)
    }

    public func getColor(data: spine_bone_data) -> spine_color {
        return spine_bone_data_get_color(data)
    }

    public func setColor(data: spine_bone_data, r: Float, g: Float, b: Float, a: Float) {
        spine_bone_data_set_color(data, r, g, b, a)
    }

    public func isVisible(data: spine_bone_data) -> Int32 {
        return spine_bone_data_is_visible(data)
    }

    public func setVisible(data: spine_bone_data, isVisible: Int32) {
        spine_bone_data_set_visible(data, isVisible)
    }

}

public final class SpineSlotData {

    public func getIndex(slot: spine_slot_data) -> Int32 {
        return spine_slot_data_get_index(slot)
    }

    public func getName(slot: spine_slot_data) -> UnsafeMutablePointer<utf8> {
        return spine_slot_data_get_name(slot)
    }

    public func getBoneData(slot: spine_slot_data) -> spine_bone_data {
        return spine_slot_data_get_bone_data(slot)
    }

    public func getColor(slot: spine_slot_data) -> spine_color {
        return spine_slot_data_get_color(slot)
    }

    public func setColor(slot: spine_slot_data, r: Float, g: Float, b: Float, a: Float) {
        spine_slot_data_set_color(slot, r, g, b, a)
    }

    public func getDarkColor(slot: spine_slot_data) -> spine_color {
        return spine_slot_data_get_dark_color(slot)
    }

    public func setDarkColor(slot: spine_slot_data, r: Float, g: Float, b: Float, a: Float) {
        spine_slot_data_set_dark_color(slot, r, g, b, a)
    }

    public func hasDarkColor(slot: spine_slot_data) -> Int32 {
        return spine_slot_data_has_dark_color(slot)
    }

    public func setHasDarkColor(slot: spine_slot_data, hasDarkColor: Int32) {
        spine_slot_data_set_has_dark_color(slot, hasDarkColor)
    }

    public func getAttachmentName(slot: spine_slot_data) -> UnsafeMutablePointer<utf8> {
        return spine_slot_data_get_attachment_name(slot)
    }

    public func setAttachmentName(slot: spine_slot_data, attachmentName: UnsafeMutablePointer<utf8>) {
        spine_slot_data_set_attachment_name(slot, attachmentName)
    }

    public func getBlendMode(slot: spine_slot_data) -> spine_blend_mode {
        return spine_slot_data_get_blend_mode(slot)
    }

    public func setBlendMode(slot: spine_slot_data, blendMode: spine_blend_mode) {
        spine_slot_data_set_blend_mode(slot, blendMode)
    }

    public func isVisible(slot: spine_slot_data) -> Int32 {
        return spine_slot_data_is_visible(slot)
    }

    public func setVisible(slot: spine_slot_data, visible: Int32) {
        spine_slot_data_set_visible(slot, visible)
    }

}

public final class SpineAnimation {

    public func getName(animation: spine_animation) -> UnsafeMutablePointer<utf8> {
        return spine_animation_get_name(animation)
    }

    public func getDuration(animation: spine_animation) -> Float {
        return spine_animation_get_duration(animation)
    }

}

public final class SpineSkeleton {

    public func updateCache(skeleton: spine_skeleton) {
        spine_skeleton_update_cache(skeleton)
    }

    public func updateWorldTransform(skeleton: spine_skeleton, physics: spine_physics) {
        spine_skeleton_update_world_transform(skeleton, physics)
    }

    public func updateWorldTransformBone(skeleton: spine_skeleton, physics: spine_physics, parent: spine_bone) {
        spine_skeleton_update_world_transform_bone(skeleton, physics, parent)
    }

    public func setToSetupPose(skeleton: spine_skeleton) {
        spine_skeleton_set_to_setup_pose(skeleton)
    }

    public func setBonesToSetupPose(skeleton: spine_skeleton) {
        spine_skeleton_set_bones_to_setup_pose(skeleton)
    }

    public func setSlotsToSetupPose(skeleton: spine_skeleton) {
        spine_skeleton_set_slots_to_setup_pose(skeleton)
    }

    public func findBone(skeleton: spine_skeleton, boneName: UnsafeMutablePointer<utf8>) -> spine_bone {
        return spine_skeleton_find_bone(skeleton, boneName)
    }

    public func findSlot(skeleton: spine_skeleton, slotName: UnsafeMutablePointer<utf8>) -> spine_slot {
        return spine_skeleton_find_slot(skeleton, slotName)
    }

    public func setSkinByName(skeleton: spine_skeleton, skinName: UnsafeMutablePointer<utf8>) {
        spine_skeleton_set_skin_by_name(skeleton, skinName)
    }

    public func setSkin(skeleton: spine_skeleton, skin: spine_skin) {
        spine_skeleton_set_skin(skeleton, skin)
    }

    public func getAttachmentByName(skeleton: spine_skeleton, slotName: UnsafeMutablePointer<utf8>, attachmentName: UnsafeMutablePointer<utf8>) -> spine_attachment {
        return spine_skeleton_get_attachment_by_name(skeleton, slotName, attachmentName)
    }

    public func getAttachment(skeleton: spine_skeleton, slotIndex: Int32, attachmentName: UnsafeMutablePointer<utf8>) -> spine_attachment {
        return spine_skeleton_get_attachment(skeleton, slotIndex, attachmentName)
    }

    public func setAttachment(skeleton: spine_skeleton, slotName: UnsafeMutablePointer<utf8>, attachmentName: UnsafeMutablePointer<utf8>) {
        spine_skeleton_set_attachment(skeleton, slotName, attachmentName)
    }

    public func findIkConstraint(skeleton: spine_skeleton, constraintName: UnsafeMutablePointer<utf8>) -> spine_ik_constraint {
        return spine_skeleton_find_ik_constraint(skeleton, constraintName)
    }

    public func findTransformConstraint(skeleton: spine_skeleton, constraintName: UnsafeMutablePointer<utf8>) -> spine_transform_constraint {
        return spine_skeleton_find_transform_constraint(skeleton, constraintName)
    }

    public func findPathConstraint(skeleton: spine_skeleton, constraintName: UnsafeMutablePointer<utf8>) -> spine_path_constraint {
        return spine_skeleton_find_path_constraint(skeleton, constraintName)
    }

    public func findPhysicsConstraint(skeleton: spine_skeleton, constraintName: UnsafeMutablePointer<utf8>) -> spine_physics_constraint {
        return spine_skeleton_find_physics_constraint(skeleton, constraintName)
    }

    public func getBounds(skeleton: spine_skeleton) -> spine_bounds {
        return spine_skeleton_get_bounds(skeleton)
    }

    public func getRootBone(skeleton: spine_skeleton) -> spine_bone {
        return spine_skeleton_get_root_bone(skeleton)
    }

    public func getData(skeleton: spine_skeleton) -> spine_skeleton_data {
        return spine_skeleton_get_data(skeleton)
    }

    public func getNumBones(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_bones(skeleton)
    }

    public func getBones(skeleton: spine_skeleton) -> spine_bone * {
        return spine_skeleton_get_bones(skeleton)
    }

    public func getNumSlots(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_slots(skeleton)
    }

    public func getSlots(skeleton: spine_skeleton) -> spine_slot * {
        return spine_skeleton_get_slots(skeleton)
    }

    public func getNumDrawOrder(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_draw_order(skeleton)
    }

    public func getDrawOrder(skeleton: spine_skeleton) -> spine_slot * {
        return spine_skeleton_get_draw_order(skeleton)
    }

    public func getNumIkConstraints(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_ik_constraints(skeleton)
    }

    public func getIkConstraints(skeleton: spine_skeleton) -> spine_ik_constraint * {
        return spine_skeleton_get_ik_constraints(skeleton)
    }

    public func getNumTransformConstraints(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_transform_constraints(skeleton)
    }

    public func getTransformConstraints(skeleton: spine_skeleton) -> spine_transform_constraint * {
        return spine_skeleton_get_transform_constraints(skeleton)
    }

    public func getNumPathConstraints(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_path_constraints(skeleton)
    }

    public func getPathConstraints(skeleton: spine_skeleton) -> spine_path_constraint * {
        return spine_skeleton_get_path_constraints(skeleton)
    }

    public func getNumPhysicsConstraints(skeleton: spine_skeleton) -> Int32 {
        return spine_skeleton_get_num_physics_constraints(skeleton)
    }

    public func getPhysicsConstraints(skeleton: spine_skeleton) -> spine_physics_constraint * {
        return spine_skeleton_get_physics_constraints(skeleton)
    }

    public func getSkin(skeleton: spine_skeleton) -> spine_skin {
        return spine_skeleton_get_skin(skeleton)
    }

    public func getColor(skeleton: spine_skeleton) -> spine_color {
        return spine_skeleton_get_color(skeleton)
    }

    public func setColor(skeleton: spine_skeleton, r: Float, g: Float, b: Float, a: Float) {
        spine_skeleton_set_color(skeleton, r, g, b, a)
    }

    public func setPosition(skeleton: spine_skeleton, x: Float, y: Float) {
        spine_skeleton_set_position(skeleton, x, y)
    }

    public func getX(skeleton: spine_skeleton) -> Float {
        return spine_skeleton_get_x(skeleton)
    }

    public func setX(skeleton: spine_skeleton, x: Float) {
        spine_skeleton_set_x(skeleton, x)
    }

    public func getY(skeleton: spine_skeleton) -> Float {
        return spine_skeleton_get_y(skeleton)
    }

    public func setY(skeleton: spine_skeleton, y: Float) {
        spine_skeleton_set_y(skeleton, y)
    }

    public func getScaleX(skeleton: spine_skeleton) -> Float {
        return spine_skeleton_get_scale_x(skeleton)
    }

    public func setScaleX(skeleton: spine_skeleton, scaleX: Float) {
        spine_skeleton_set_scale_x(skeleton, scaleX)
    }

    public func getScaleY(skeleton: spine_skeleton) -> Float {
        return spine_skeleton_get_scale_y(skeleton)
    }

    public func setScaleY(skeleton: spine_skeleton, scaleY: Float) {
        spine_skeleton_set_scale_y(skeleton, scaleY)
    }

    public func getTime(skeleton: spine_skeleton) -> Float {
        return spine_skeleton_get_time(skeleton)
    }

    public func setTime(skeleton: spine_skeleton, time: Float) {
        spine_skeleton_set_time(skeleton, time)
    }

    public func update(skeleton: spine_skeleton, delta: Float) {
        spine_skeleton_update(skeleton, delta)
    }

}

public final class SpineSequence {

    public func apply(sequence: spine_sequence, slot: spine_slot, attachment: spine_attachment) {
        spine_sequence_apply(sequence, slot, attachment)
    }

    public func getPath(sequence: spine_sequence, basePath: UnsafeMutablePointer<utf8>, index: Int32) -> UnsafeMutablePointer<utf8> {
        return spine_sequence_get_path(sequence, basePath, index)
    }

    public func getId(sequence: spine_sequence) -> Int32 {
        return spine_sequence_get_id(sequence)
    }

    public func setId(sequence: spine_sequence, id: Int32) {
        spine_sequence_set_id(sequence, id)
    }

    public func getStart(sequence: spine_sequence) -> Int32 {
        return spine_sequence_get_start(sequence)
    }

    public func setStart(sequence: spine_sequence, start: Int32) {
        spine_sequence_set_start(sequence, start)
    }

    public func getDigits(sequence: spine_sequence) -> Int32 {
        return spine_sequence_get_digits(sequence)
    }

    public func setDigits(sequence: spine_sequence, digits: Int32) {
        spine_sequence_set_digits(sequence, digits)
    }

    public func getSetupIndex(sequence: spine_sequence) -> Int32 {
        return spine_sequence_get_setup_index(sequence)
    }

    public func setSetupIndex(sequence: spine_sequence, setupIndex: Int32) {
        spine_sequence_set_setup_index(sequence, setupIndex)
    }

    public func getNumRegions(sequence: spine_sequence) -> Int32 {
        return spine_sequence_get_num_regions(sequence)
    }

    public func getRegions(sequence: spine_sequence) -> spine_texture_region * {
        return spine_sequence_get_regions(sequence)
    }

}

public final class SpineBounds {

    public func getX(bounds: spine_bounds) -> Float {
        return spine_bounds_get_x(bounds)
    }

    public func getY(bounds: spine_bounds) -> Float {
        return spine_bounds_get_y(bounds)
    }

    public func getWidth(bounds: spine_bounds) -> Float {
        return spine_bounds_get_width(bounds)
    }

    public func getHeight(bounds: spine_bounds) -> Float {
        return spine_bounds_get_height(bounds)
    }

}

public final class SpineVector {

    public func getX(vector: spine_vector) -> Float {
        return spine_vector_get_x(vector)
    }

    public func getY(vector: spine_vector) -> Float {
        return spine_vector_get_y(vector)
    }

}

public final class SpineEvent {

    public func getData(event: spine_event) -> spine_event_data {
        return spine_event_get_data(event)
    }

    public func getTime(event: spine_event) -> Float {
        return spine_event_get_time(event)
    }

    public func getIntValue(event: spine_event) -> Int32 {
        return spine_event_get_int_value(event)
    }

    public func setIntValue(event: spine_event, value: Int32) {
        spine_event_set_int_value(event, value)
    }

    public func getFloatValue(event: spine_event) -> Float {
        return spine_event_get_float_value(event)
    }

    public func setFloatValue(event: spine_event, value: Float) {
        spine_event_set_float_value(event, value)
    }

    public func getStringValue(event: spine_event) -> UnsafeMutablePointer<utf8> {
        return spine_event_get_string_value(event)
    }

    public func setStringValue(event: spine_event, value: UnsafeMutablePointer<utf8>) {
        spine_event_set_string_value(event, value)
    }

    public func getVolume(event: spine_event) -> Float {
        return spine_event_get_volume(event)
    }

    public func setVolume(event: spine_event, volume: Float) {
        spine_event_set_volume(event, volume)
    }

    public func getBalance(event: spine_event) -> Float {
        return spine_event_get_balance(event)
    }

    public func setBalance(event: spine_event, balance: Float) {
        spine_event_set_balance(event, balance)
    }

}

public final class SpineAtlas {

    public func load(atlasData: UnsafeMutablePointer<utf8>) -> spine_atlas {
        return spine_atlas_load(atlasData)
    }

    public func getNumImagePaths(atlas: spine_atlas) -> Int32 {
        return spine_atlas_get_num_image_paths(atlas)
    }

    public func getImagePath(atlas: spine_atlas, index: Int32) -> UnsafeMutablePointer<utf8> {
        return spine_atlas_get_image_path(atlas, index)
    }

    public func getError(atlas: spine_atlas) -> UnsafeMutablePointer<utf8> {
        return spine_atlas_get_error(atlas)
    }

    public func dispose(atlas: spine_atlas) {
        spine_atlas_dispose(atlas)
    }

}

public final class SpineColor {

    public func getR(color: spine_color) -> Float {
        return spine_color_get_r(color)
    }

    public func getG(color: spine_color) -> Float {
        return spine_color_get_g(color)
    }

    public func getB(color: spine_color) -> Float {
        return spine_color_get_b(color)
    }

    public func getA(color: spine_color) -> Float {
        return spine_color_get_a(color)
    }

}

public final class SpineBone {

    public func setIsYDown(yDown: Int32) {
        spine_bone_set_is_y_down(yDown)
    }

    public func getIsYDown() -> Int32 {
        return spine_bone_get_is_y_down()
    }

    public func update(bone: spine_bone) {
        spine_bone_update(bone)
    }

    public func updateWorldTransform(bone: spine_bone) {
        spine_bone_update_world_transform(bone)
    }

    public func updateWorldTransformWith(bone: spine_bone, x: Float, y: Float, rotation: Float, scaleX: Float, scaleY: Float, shearX: Float, shearY: Float) {
        spine_bone_update_world_transform_with(bone, x, y, rotation, scaleX, scaleY, shearX, shearY)
    }

    public func updateAppliedTransform(bone: spine_bone) {
        spine_bone_update_applied_transform(bone)
    }

    public func setToSetupPose(bone: spine_bone) {
        spine_bone_set_to_setup_pose(bone)
    }

    public func worldToLocal(bone: spine_bone, worldX: Float, worldY: Float) -> spine_vector {
        return spine_bone_world_to_local(bone, worldX, worldY)
    }

    public func worldToParent(bone: spine_bone, worldX: Float, worldY: Float) -> spine_vector {
        return spine_bone_world_to_parent(bone, worldX, worldY)
    }

    public func localToWorld(bone: spine_bone, localX: Float, localY: Float) -> spine_vector {
        return spine_bone_local_to_world(bone, localX, localY)
    }

    public func parentToWorld(bone: spine_bone, localX: Float, localY: Float) -> spine_vector {
        return spine_bone_parent_to_world(bone, localX, localY)
    }

    public func worldToLocalRotation(bone: spine_bone, worldRotation: Float) -> Float {
        return spine_bone_world_to_local_rotation(bone, worldRotation)
    }

    public func localToWorldRotation(bone: spine_bone, localRotation: Float) -> Float {
        return spine_bone_local_to_world_rotation(bone, localRotation)
    }

    public func rotateWorld(bone: spine_bone, degrees: Float) {
        spine_bone_rotate_world(bone, degrees)
    }

    public func getWorldToLocalRotationX(bone: spine_bone) -> Float {
        return spine_bone_get_world_to_local_rotation_x(bone)
    }

    public func getWorldToLocalRotationY(bone: spine_bone) -> Float {
        return spine_bone_get_world_to_local_rotation_y(bone)
    }

    public func getData(bone: spine_bone) -> spine_bone_data {
        return spine_bone_get_data(bone)
    }

    public func getSkeleton(bone: spine_bone) -> spine_skeleton {
        return spine_bone_get_skeleton(bone)
    }

    public func getParent(bone: spine_bone) -> spine_bone {
        return spine_bone_get_parent(bone)
    }

    public func getNumChildren(bone: spine_bone) -> Int32 {
        return spine_bone_get_num_children(bone)
    }

    public func getChildren(bone: spine_bone) -> spine_bone * {
        return spine_bone_get_children(bone)
    }

    public func getX(bone: spine_bone) -> Float {
        return spine_bone_get_x(bone)
    }

    public func setX(bone: spine_bone, x: Float) {
        spine_bone_set_x(bone, x)
    }

    public func getY(bone: spine_bone) -> Float {
        return spine_bone_get_y(bone)
    }

    public func setY(bone: spine_bone, y: Float) {
        spine_bone_set_y(bone, y)
    }

    public func getRotation(bone: spine_bone) -> Float {
        return spine_bone_get_rotation(bone)
    }

    public func setRotation(bone: spine_bone, rotation: Float) {
        spine_bone_set_rotation(bone, rotation)
    }

    public func getScaleX(bone: spine_bone) -> Float {
        return spine_bone_get_scale_x(bone)
    }

    public func setScaleX(bone: spine_bone, scaleX: Float) {
        spine_bone_set_scale_x(bone, scaleX)
    }

    public func getScaleY(bone: spine_bone) -> Float {
        return spine_bone_get_scale_y(bone)
    }

    public func setScaleY(bone: spine_bone, scaleY: Float) {
        spine_bone_set_scale_y(bone, scaleY)
    }

    public func getShearX(bone: spine_bone) -> Float {
        return spine_bone_get_shear_x(bone)
    }

    public func setShearX(bone: spine_bone, shearX: Float) {
        spine_bone_set_shear_x(bone, shearX)
    }

    public func getShearY(bone: spine_bone) -> Float {
        return spine_bone_get_shear_y(bone)
    }

    public func setShearY(bone: spine_bone, shearY: Float) {
        spine_bone_set_shear_y(bone, shearY)
    }

    public func getAppliedRotation(bone: spine_bone) -> Float {
        return spine_bone_get_applied_rotation(bone)
    }

    public func setAppliedRotation(bone: spine_bone, rotation: Float) {
        spine_bone_set_applied_rotation(bone, rotation)
    }

    public func getAX(bone: spine_bone) -> Float {
        return spine_bone_get_a_x(bone)
    }

    public func setAX(bone: spine_bone, x: Float) {
        spine_bone_set_a_x(bone, x)
    }

    public func getAY(bone: spine_bone) -> Float {
        return spine_bone_get_a_y(bone)
    }

    public func setAY(bone: spine_bone, y: Float) {
        spine_bone_set_a_y(bone, y)
    }

    public func getAScaleX(bone: spine_bone) -> Float {
        return spine_bone_get_a_scale_x(bone)
    }

    public func setAScaleX(bone: spine_bone, scaleX: Float) {
        spine_bone_set_a_scale_x(bone, scaleX)
    }

    public func getAScaleY(bone: spine_bone) -> Float {
        return spine_bone_get_a_scale_y(bone)
    }

    public func setAScaleY(bone: spine_bone, scaleY: Float) {
        spine_bone_set_a_scale_y(bone, scaleY)
    }

    public func getAShearX(bone: spine_bone) -> Float {
        return spine_bone_get_a_shear_x(bone)
    }

    public func setAShearX(bone: spine_bone, shearX: Float) {
        spine_bone_set_a_shear_x(bone, shearX)
    }

    public func getAShearY(bone: spine_bone) -> Float {
        return spine_bone_get_a_shear_y(bone)
    }

    public func setAShearY(bone: spine_bone, shearY: Float) {
        spine_bone_set_a_shear_y(bone, shearY)
    }

    public func getA(bone: spine_bone) -> Float {
        return spine_bone_get_a(bone)
    }

    public func setA(bone: spine_bone, a: Float) {
        spine_bone_set_a(bone, a)
    }

    public func getB(bone: spine_bone) -> Float {
        return spine_bone_get_b(bone)
    }

    public func setB(bone: spine_bone, b: Float) {
        spine_bone_set_b(bone, b)
    }

    public func getC(bone: spine_bone) -> Float {
        return spine_bone_get_c(bone)
    }

    public func setC(bone: spine_bone, c: Float) {
        spine_bone_set_c(bone, c)
    }

    public func getD(bone: spine_bone) -> Float {
        return spine_bone_get_d(bone)
    }

    public func setD(bone: spine_bone, d: Float) {
        spine_bone_set_d(bone, d)
    }

    public func getWorldX(bone: spine_bone) -> Float {
        return spine_bone_get_world_x(bone)
    }

    public func setWorldX(bone: spine_bone, worldX: Float) {
        spine_bone_set_world_x(bone, worldX)
    }

    public func getWorldY(bone: spine_bone) -> Float {
        return spine_bone_get_world_y(bone)
    }

    public func setWorldY(bone: spine_bone, worldY: Float) {
        spine_bone_set_world_y(bone, worldY)
    }

    public func getWorldRotationX(bone: spine_bone) -> Float {
        return spine_bone_get_world_rotation_x(bone)
    }

    public func getWorldRotationY(bone: spine_bone) -> Float {
        return spine_bone_get_world_rotation_y(bone)
    }

    public func getWorldScaleX(bone: spine_bone) -> Float {
        return spine_bone_get_world_scale_x(bone)
    }

    public func getWorldScaleY(bone: spine_bone) -> Float {
        return spine_bone_get_world_scale_y(bone)
    }

    public func getIsActive(bone: spine_bone) -> Int32 {
        return spine_bone_get_is_active(bone)
    }

    public func setIsActive(bone: spine_bone, isActive: Int32) {
        spine_bone_set_is_active(bone, isActive)
    }

    public func getInherit(data: spine_bone) -> spine_inherit {
        return spine_bone_get_inherit(data)
    }

    public func setInherit(data: spine_bone, inherit: spine_inherit) {
        spine_bone_set_inherit(data, inherit)
    }

}

public final class SpineSlot {

    public func setToSetupPose(slot: spine_slot) {
        spine_slot_set_to_setup_pose(slot)
    }

    public func getData(slot: spine_slot) -> spine_slot_data {
        return spine_slot_get_data(slot)
    }

    public func getBone(slot: spine_slot) -> spine_bone {
        return spine_slot_get_bone(slot)
    }

    public func getSkeleton(slot: spine_slot) -> spine_skeleton {
        return spine_slot_get_skeleton(slot)
    }

    public func getColor(slot: spine_slot) -> spine_color {
        return spine_slot_get_color(slot)
    }

    public func setColor(slot: spine_slot, r: Float, g: Float, b: Float, a: Float) {
        spine_slot_set_color(slot, r, g, b, a)
    }

    public func getDarkColor(slot: spine_slot) -> spine_color {
        return spine_slot_get_dark_color(slot)
    }

    public func setDarkColor(slot: spine_slot, r: Float, g: Float, b: Float, a: Float) {
        spine_slot_set_dark_color(slot, r, g, b, a)
    }

    public func hasDarkColor(slot: spine_slot) -> Int32 {
        return spine_slot_has_dark_color(slot)
    }

    public func getAttachment(slot: spine_slot) -> spine_attachment {
        return spine_slot_get_attachment(slot)
    }

    public func setAttachment(slot: spine_slot, attachment: spine_attachment) {
        spine_slot_set_attachment(slot, attachment)
    }

    public func getSequenceIndex(slot: spine_slot) -> Int32 {
        return spine_slot_get_sequence_index(slot)
    }

    public func setSequenceIndex(slot: spine_slot, sequenceIndex: Int32) {
        spine_slot_set_sequence_index(slot, sequenceIndex)
    }

}

public final class SpineSkin {

    public func setAttachment(skin: spine_skin, slotIndex: Int32, name: UnsafeMutablePointer<utf8>, attachment: spine_attachment) {
        spine_skin_set_attachment(skin, slotIndex, name, attachment)
    }

    public func getAttachment(skin: spine_skin, slotIndex: Int32, name: UnsafeMutablePointer<utf8>) -> spine_attachment {
        return spine_skin_get_attachment(skin, slotIndex, name)
    }

    public func removeAttachment(skin: spine_skin, slotIndex: Int32, name: UnsafeMutablePointer<utf8>) {
        spine_skin_remove_attachment(skin, slotIndex, name)
    }

    public func getName(skin: spine_skin) -> UnsafeMutablePointer<utf8> {
        return spine_skin_get_name(skin)
    }

    public func addSkin(skin: spine_skin, other: spine_skin) {
        spine_skin_add_skin(skin, other)
    }

    public func copySkin(skin: spine_skin, other: spine_skin) {
        spine_skin_copy_skin(skin, other)
    }

    public func getEntries(skin: spine_skin) -> spine_skin_entries {
        return spine_skin_get_entries(skin)
    }

    public func getNumBones(skin: spine_skin) -> Int32 {
        return spine_skin_get_num_bones(skin)
    }

    public func getBones(skin: spine_skin) -> spine_bone_data * {
        return spine_skin_get_bones(skin)
    }

    public func getNumConstraints(skin: spine_skin) -> Int32 {
        return spine_skin_get_num_constraints(skin)
    }

    public func getConstraints(skin: spine_skin) -> spine_constraint_data * {
        return spine_skin_get_constraints(skin)
    }

    public func create(name: UnsafeMutablePointer<utf8>) -> spine_skin {
        return spine_skin_create(name)
    }

    public func dispose(skin: spine_skin) {
        spine_skin_dispose(skin)
    }

}

