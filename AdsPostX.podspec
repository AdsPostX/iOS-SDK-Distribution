Pod::Spec.new do |s|
  s.name         = 'AdsPostX'
  s.version      = '1.0.2'
  s.summary      = 'AdsPostX offers an iOS SDK designed to help you integrate AdsPostX into your iOS mobile application.'
  s.homepage     = 'https://github.com/AdsPostX/iOS-SDK-Distribution'
  s.license      = { :type => 'MIT' }
  s.author       = { 'adspostx' => 'help@adspostx.com' }
  s.source       = { :git => 'https://github.com/AdsPostX/iOS-SDK-Distribution.git', :tag => s.version }
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks  = 'AdsPostX.xcframework'
end
