#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spine_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'Spine'
  s.version          = '0.0.1'
  s.summary          = 'Spine runtimes for iOS.'
  s.description      = <<-DESC
Spine runtimes for iOS.
                       DESC
  s.homepage         = 'http://esotericsoftware.com'
  s.author           = { "Esoteric Software LLC  " => "http://esotericsoftware.com" }
  s.license          = { :file => '../LICENSE' }

  s.source           = { :path => '.' }
  s.source_files     = 'Sources/Spine/**/*.{swift}', 'Sources/Spine/**/*.{metal}'
  s.platform         = :ios, '13.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.xcconfig            = { 'HEADER_SEARCH_PATHS' => '$(inherited) ' + __dir__ + '/../spine-cpp/spine-cpp/include ' + __dir__ + '/../spine-cpp/spine-cpp-lite ' + __dir__ + '/Sources/Spine/Metal' }
  s.swift_version = '5.0'

  # External Dependencies
  s.dependency 'SpineCppLite'
  s.dependency 'SpineShadersStructs'
end
