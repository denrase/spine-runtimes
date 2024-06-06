#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spine_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name                = 'SpineShadersStructs'
  s.version             = '0.0.1'
  s.summary             = 'Metal shaders structs for spine'
  s.description         = <<-DESC
Metal shaders structs for spine.
                       DESC
  s.homepage            = 'http://esotericsoftware.com'
  s.author              = { "Esoteric Software LLC  " => "http://esotericsoftware.com" }
  s.license             = { :file => '../LICENSE' }
  s.platform            = :ios, '13.0'

  s.source              = { :path => "." }
  s.public_header_files = 'Sources/Spine/Metal/**/*.{h}'
  s.source_files        = 'Sources/Spine/Metal/**/*.{h,cpp}'
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.xcconfig            = { 'HEADER_SEARCH_PATHS' => '$(inherited) ' + __dir__ + '/Sources/Spine/Metal' }

  # s.preserve_path = 'Sources/SpineShadersStructs/module.modulemap'
  # s.module_map = 'Sources/SpineShadersStructs/module.modulemap'
end
