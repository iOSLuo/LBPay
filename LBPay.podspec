Pod::Spec.new do |spec|

  spec.name         = "LBPay"
  spec.version      = "1.0.1"
  spec.summary      = "LBPay"
  spec.description  = <<-DESC
                      支付组件测试
                   DESC
  spec.homepage     = "https://github.com/iOSLuo/LBPay.git"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "罗博" => "boluo1992@126.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/iOSLuo/LBPay.git", :tag => "#{spec.version}" }
  
  spec.subspec 'FSTextView' do |ss|
    ss.source_files  = "LBPay", "LBPay/FSTextView/*.{h,m,mm,swift}"
    ss.public_header_files = "LBPay/FSTextView/*.h"
  end
  
  spec.subspec 'Resources' do |ss|
    ss.resources = 'LBPay/Resources/resources.bundle'
  end

  spec.requires_arc = true
  
  spec.dependency "ZDBaseModule"
  
  spec.prefix_header_contents = '#import "LBPayMacros.h"'

end
