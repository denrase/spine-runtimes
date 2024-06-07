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
  s.license             = { :file => 'LICENSE' }
  s.platform            = :ios, '13.0'

  s.source              = { :git => 'https://github.com/denrase/spine-runtimes.git', :branch => 'cocoapods' }
  s.public_header_files = 'spine-ios/Sources/Spine/Metal/**/*.{h}'
  s.source_files        = 'spine-ios/Sources/Spine/Metal/**/*.{h,cpp}'

  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  s.preserve_path = 'spine-ios/Sources/SpineShadersStructs/module.modulemap'
  s.module_map = 'spine-ios/Sources/SpineShadersStructs/module.modulemap'
end
