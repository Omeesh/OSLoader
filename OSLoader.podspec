
Pod::Spec.new do |spec|

  spec.name         = "OSLoader"
  spec.version      = "0.0.1"
  spec.summary      = "OSLoader is a customizable loader with awesome animations."

  spec.description  = <<-DESC
    OSLoader let's you use lottie animations as loader in your project with only 2 lines of code.
                   DESC

  spec.homepage     = "https://github.com/Omeesh/OSLoader"


   spec.license      = { :type => "MIT", :file => "LICENSE" }



  spec.author             = { "Omeesh" => "omeeshsharma.96@gmail.com" }


  spec.platform     = :ios



  spec.source       = { :git => "https://github.com/Omeesh/OSLoader.git", :tag => "#{spec.version}" }

  spec.source_files  = "OSLoader/**/*.{h,m,swift}"

  spec.resources = "Resources/*.json"

   spec.framework  = "UIKit"

   spec.requires_arc = true

    spec.dependency 'lottie-ios', '~> 3.1.3'


end
