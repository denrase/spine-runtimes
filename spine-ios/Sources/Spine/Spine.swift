// The Swift Programming Language
// https://docs.swift.org/swift-book

import SpineSharedStructs
import SpineWrapper

public class Spine {
    public static var name: String {
        return String(cString: SpineTest.version())
    }
}
