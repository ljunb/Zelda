#
# Be sure to run `pod lib lint Zelda.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Zelda'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Zelda.'
  s.description      = 'Add long description of the pod here'
  s.homepage         = 'https://github.com/ljunb/Zelda'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ljunb' => 'cookiejlim@gmail.com' }
  s.source           = { :git => 'https://github.com/ljunb/Zelda.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'
  s.source_files = 'Zelda/Classes/**/*'
  
  s.dependency 'YogaKit', '~> 1.7'
end
