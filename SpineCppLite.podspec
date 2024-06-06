#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spine_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name                = 'SpineCppLite'
  s.version             = '0.0.1'
  s.summary             = 'Spine runtimes for iOS.'
  s.description         = <<-DESC
Spine runtimes for iOS.
                       DESC
  s.homepage            = 'http://esotericsoftware.com'
  s.author              = { "Esoteric Software LLC  " => "http://esotericsoftware.com" }
  s.license             = { :file => 'LICENSE' }
  s.platform            = :ios, '13.0'

  s.source              = { :git => 'https://github.com/denrase/spine-runtimes.git', :branch => 'cocoapods' }
  s.public_header_files = 'spine-cpp/spine-cpp/include/**/*.{h}', 'spine-cpp/spine-cpp-lite/**/*.{h}'
  s.source_files        =  'spine-cpp/spine-cpp/include/**/*.{h}', 'spine-cpp/spine-cpp/src/**/*.{cpp}', 'spine-cpp/spine-cpp-lite/**/*.{h,cpp}'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.xcconfig            = { 'HEADER_SEARCH_PATHS' => '$(inherited) ' + __dir__ + '/spine-cpp/spine-cpp/include ' + __dir__ + '/spine-cpp/spine-cpp-lite' }
end
