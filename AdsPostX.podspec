Pod::Spec.new do |spec|
  spec.name          = 'AdsPostX'
  spec.version       = '0.0.2'
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/AdsPostX/iOS-SDK-Distribution/tree/feature/version-0.0.2'
  spec.authors       = 'shivang'
  spec.summary       = 'Integrating AdsPostX SDK allow developers to show different kind of offers in their app.'
  spec.source        = { :git => 'https://github.com/AdsPostX/iOS-SDK-Distribution.git', :branch => "feature/version-0.0.2", :tag => spec.version }
  spec.swift_version = '5.0'
  spec.ios.deployment_target  = '12.0'
  spec.vendored_frameworks = 'AdsPostX.xcframework'
end