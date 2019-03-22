require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = package['description']
  s.homepage         = package['homepage']
  s.license          = package['license']
  s.author           = package['author']
  s.source           = { :git => "#{package['repository']['url']}.git"}

  s.ios.deployment_target = '9.0'
  s.source_files = 'ios/RNTextInputMask/*.{h,m}'
  s.dependency "React"
end
