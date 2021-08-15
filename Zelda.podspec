#
# Be sure to run `pod lib lint Zelda.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Zelda'
  s.version          = '0.1.2'
  s.summary          = 'Zelda是一个支持链式语法的FlexBox布局库。'
  s.description      = <<-DESC
                       Zelda是一个支持链式语法的FlexBox布局库，是针对YogaKit的二次封装，可以快速的让iOS原生开发人员使用FlexBox技术进行
                       UI布局。
                       DESC
  s.homepage         = 'https://github.com/ljunb/Zelda'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ljunb' => '824771861@qq.com' }
  s.source           = { :git => 'https://github.com/ljunb/Zelda.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.source_files = 'Zelda/Classes/**/*'

  s.dependency 'YogaKit', '~> 1.7'
end
