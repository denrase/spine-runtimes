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
  s.license             = { :file => '../LICENSE' }
  s.platform = :ios, '12.0'
  s.source = { :path => '.' }
  s.public_header_files = 'spine-cpp/include/**/*.{h}', 'spine-cpp-lite/**/*.{h}'
  s.source_files     =  'spine-cpp/src/**/*.{cpp}', 'spine-cpp-lite/**/*.{cpp}'
  # s.header_mappings_dir = 'src'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(inherited) ' + __dir__ + '/spine-cpp/include ' + __dir__ + '/spine-cpp-lite' }
  s.module_map       = 'spine-cpp-lite/module.modulemap'
#  s.pod_target_xcconfig = {
#    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
#    'CLANG_CXX_LIBRARY' => 'libc++',
#  }
end
