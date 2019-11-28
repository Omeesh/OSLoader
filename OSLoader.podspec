
Pod::Spec.new do |spec|

spec.platform     = :ios
spec.ios.deployment_target = '9.0'
spec.name         = "OSLoader"
spec.summary      = "OSLoader is a customizable loader with awesome animations."

spec.description  = <<-DESC
OSLoader let's you use animations as loader in your project with only 2 lines of code.
DESC

spec.requires_arc = true


spec.version      = "0.0.1"


spec.license      = { :type => "MIT", :file => "LICENSE" }


spec.author       = { "Omeesh" => "omeeshsharma.96@gmail.com" }

spec.homepage     = "https://github.com/Omeesh/OSLoader"



spec.source       = { :git => "https://github.com/Omeesh/OSLoader.git", :tag => "#{spec.version}" }

spec.framework  = "UIKit"
spec.dependency 'lottie-ios', '~> 3.1.3'


spec.source_files  = "OSLoader/**/*.{h,m,swift}"
spec.resources = "OSLoader/**/*.{json}"

spec.swift_verison = "4.2"

end
