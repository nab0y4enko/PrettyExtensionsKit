Pod::Spec.new do |s|
    s.name              = "PrettyExtensionsKit"
    s.module_name       = "PrettyExtensionsKit"
    s.version           = "0.3.1"
    s.summary           = "A pretty set of extensions for Swift."
    s.description       = "A pretty set of extensions, which I use when developing applications based on Swift."
    s.homepage          = "https://github.com/nab0y4enko/PrettyExtensionsKit"
    s.license           = 'MIT'
    s.author            = { "Oleksii Naboichenko" => "oleksii.naboichenko@gmail.com" }
    s.social_media_url  = "https://twitter.com/nab0y4enko"
   
    s.source            = { :git => "https://github.com/nab0y4enko/PrettyExtensionsKit.git", :tag => "#{s.version}" }

    s.frameworks        = "Foundation"

    s.ios.deployment_target = '10.0'

    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
    
    s.default_subspecs = 'SwiftCore', 'Foundation', 'CoreGraphics', 'QuartzCore', 'UIKit', 'CoreLocation'

    s.subspec 'SwiftCore' do |subspec|
        subspec.ios.frameworks = 'UIKit'
        subspec.source_files = 'Sources/SwiftCore/*'
    end

    s.subspec 'Foundation' do |subspec|
        subspec.ios.frameworks = 'Foundation'
        subspec.source_files = 'Sources/Foundation/*'
    end

    s.subspec 'CoreGraphics' do |subspec|
        subspec.ios.frameworks = 'CoreGraphics'
        subspec.source_files = 'Sources/CoreGraphics/*'
        subspec.dependency 'PrettyExtensionsKit/SwiftCore'
    end

    s.subspec 'QuartzCore' do |subspec|
        subspec.ios.frameworks = 'QuartzCore'
        subspec.source_files = 'Sources/QuartzCore/*'
    end

    s.subspec 'UIKit' do |subspec|
        subspec.ios.frameworks = 'UIKit'
        subspec.source_files = 'Sources/UIKit/*'
        subspec.dependency 'PrettyExtensionsKit/SwiftCore'
        subspec.dependency 'PrettyExtensionsKit/CoreGraphics'
    end
    s.subspec 'CoreLocation' do |subspec|
        subspec.ios.frameworks = 'CoreLocation'
        subspec.source_files = 'Sources/CoreLocation/*'
        subspec.dependency 'PrettyExtensionsKit/SwiftCore'
    end
end
