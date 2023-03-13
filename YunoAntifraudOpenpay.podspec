Pod::Spec.new do |s|
  s.name             = 'YunoAntifraudOpenpay'
  s.version          = '0.0.3'
  s.summary          = 'OpenPay antifraud by Yuno'

  s.description      = <<-DESC
  Openpay antifraud solution provided by Yuno.
                       DESC

  s.homepage         = 'https://www.y.uno/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lautaro Pinto' => 'lautaro.pinto@y.uno' }
  s.source           = { :http => 'https://github.com/yuno-payments/yuno-antifraud-openpay-ios/releases/download/' + s.version.to_s + '/YunoAntifraudOpenpay.xcframework.zip' }

  s.ios.deployment_target = '13.0'

  s.swift_version         = '5.4'
  s.platform              = :ios, '13.0'

  s.requires_arc          = true

  # script to unzip the xcframework downloaded from the OpenPay repo
  s.prepare_command = <<-CMD
    curl -L -o OpenpayKit.xcframework.zip https://github.com/open-pay/openpay-swift-ios/releases/download/3.1.0/OpenpayKit.xcframework.zip && \
    unzip OpenpayKit.xcframework.zip && \
    rm OpenpayKit.xcframework.zip
    CMD
  # add the dependency  
  # s.vendored_frameworks = 'OpenpayKit.xcframework'

  
  s.vendored_frameworks = 'OpenpayKit.xcframework', 'YunoAntifraudOpenpay.xcframework'
  
  s.frameworks = 'UIKit'
  s.frameworks = 'Combine'
  s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => ['${PODS_XCFRAMEWORKS_BUILD_DIR}/YunoAntifraudOpenpay'] }
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
