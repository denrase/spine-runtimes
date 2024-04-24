import SpineWrapper
import Foundation

/// Atlas data loaded from a `.atlas` file and its corresponding `.png` files. For each atlas image,
/// a corresponding [Image] and [Paint] is constructed, which are used when rendering a skeleton
/// that uses this atlas.
///
/// Use the static methods [fromAsset], [fromFile], and [fromHttp] to load an atlas. Call [dispose]
/// when the atlas is no longer in use to release its resources.
public final class Atlas {
    private let atlas: spine_atlas
    
    private init(atlas: spine_atlas) {
        self.atlas = atlas
    }
    
    deinit {
        spine_atlas_dispose(atlas)
    }
    
    private static func load(atlasFileName: String, loadFile: (_ name: String) async throws -> Data) async throws -> Atlas {
        let atlasBytes = try await loadFile(atlasFileName)
        guard let atlasData: NSString = String(data: atlasBytes, encoding: .utf8) as? NSString else {
            throw "Could not read atlas bytes"
        }
        
        let atlasDataNative = UnsafeMutablePointer<CChar>(mutating: atlasData.utf8String)
        guard let spineAtlas = spine_atlas_load(atlasDataNative) else {
            throw "Couldn't load atlas data"
        }
        
        if let atlasError = spine_atlas_get_error(spineAtlas) {
            let message = String(cString: atlasError)
            spine_atlas_dispose(spineAtlas)
            throw "Couldn't load atlas: \(message)"
        }
        
        // TODO: Continue with pages...
        
        return Atlas(atlas: spineAtlas)
    }
    
    public static func fromAsset(_ atlasFileName: String, bundle: Bundle = .main) async throws -> Atlas {
        return try await Self.load(atlasFileName: atlasFileName) { name in
            guard let fileUrl = bundle.url(forResource: name, withExtension: "atlas") else {
                throw "Could not find atlas with file name \(name)"
            }
            return try Data(contentsOf: fileUrl, options: [])
        }
    }
}

extension String: Error {
    
}
