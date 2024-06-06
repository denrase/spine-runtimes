#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spine_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'Spine iOS'
  s.version          = '0.0.1'
  s.summary          = 'Spine runtimes for iOS.'
  s.description      = <<-DESC
Spine runtimes for iOS.
                       DESC
  s.homepage         = 'http://esotericsoftware.com'
  s.author           = { "Esoteric Software LLC  " => "http://esotericsoftware.com" }
  s.license          = { :file => '../../LICENSE' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*.{cpp}'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"' + __dir__ + '/Classes/spine-cpp/include"' }
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
