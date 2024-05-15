//
//  File.swift
//  
//
//  Created by Denis Andrašec on 15.05.24.
//

import Foundation
import SpineWrapper

typealias AnimationStateListener = (_ type: EventType, _ entry: TrackEntry, _ event: Event?) -> Void

public final class AnimationStateWrapper {
    
    public let animationState: AnimationState
    public let aninationStateEvents: AnimationStateEvents
    
    private var trackEntryListeners = [TrackEntry: AnimationStateListener]()
    
    private var stateListener: AnimationStateListener?
    
    public init(animationState: AnimationState, aninationStateEvents: AnimationStateEvents) {
        self.animationState = animationState
        self.aninationStateEvents = aninationStateEvents
    }
    
    internal func setTrackEntryListener(entry: TrackEntry, listener: AnimationStateListener?) {
        if let listener {
            trackEntryListeners[entry] = listener
        } else {
            trackEntryListeners.removeValue(forKey: entry)
        }
    }
    
    func update(delta: Float) {
        animationState.update(delta: delta)
        
        let numEvents = spine_animation_state_events_get_num_events(aninationStateEvents.wrappee)
        for i in 0..<numEvents {
            let type = aninationStateEvents.getEventType(index: i)
            
            let entry = aninationStateEvents.getTrackEntry(index: i)
            let event = aninationStateEvents.getEvent(index: i)
            
            trackEntryListeners[entry]?(type, entry, event)
            stateListener?(type, entry, event)
            if type == SPINE_EVENT_TYPE_DISPOSE {
                spine_animation_state_dispose_track_entry(animationState.wrappee, entry.wrappee)
            }
        }
        aninationStateEvents.reset()
    }
    
    func setStateListener(_ stateListener: AnimationStateListener?) {
        self.stateListener = stateListener
    }
}

