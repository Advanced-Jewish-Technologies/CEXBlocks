#
# Be sure to run `pod lib lint CEXBlocks.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CEXBlocks'
  s.version          = '0.6.0'
  s.summary          = 'Extension for default collection operations'
  s.homepage         = 'https://github.com/Advanced-Jewish-Technologies/CEXBlocks'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dark Satyr' => 'isergiisf@gmail.com' }
  s.requires_arc     = true
  s.source           = { :git => 'https://github.com/Advanced-Jewish-Technologies/CEXBlocks.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'CEXBlocks/Core'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'CEXBlocks/BlocksKit.h', "CEXBlocks/BKDefines.h", 'CEXBlocks/Core/*.{h,m}'
  end
end
