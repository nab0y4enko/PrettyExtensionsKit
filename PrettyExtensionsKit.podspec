Pod::Spec.new do |spec|
    spec.name              = "PrettyExtensionsKit"
    spec.module_name       = "PrettyExtensionsKit"
    spec.version           = "0.4.0"
    spec.summary           = "A pretty set of extensions for Swift."
    spec.description       = "A pretty set of extensions, which I use when developing applications based on Swift."
    spec.homepage          = "https://github.com/nab0y4enko/PrettyExtensionsKit"
    spec.license           = 'MIT'
    spec.author            = { "Oleksii Naboichenko" => "oleksii.naboichenko@gmail.com" }
    spec.social_media_url  = "https://twitter.com/nab0y4enko"
   
    spec.source            = { :git => "https://github.com/nab0y4enko/PrettyExtensionsKit.git", :tag => "#{spec.version}" }

    spec.frameworks        = "Foundation"

    spec.ios.deployment_target = '10.0'
    
    spec.swift_versions = ['4.0', '4.2', '5.0']

    spec.default_subspecs = 'SwiftCore', 'Foundation', 'QuartzCore', 'UIKit', 'CoreLocation'

    spec.subspec 'SwiftCore' do |subspec|
        subspec.ios.frameworks = 'UIKit'
        subspec.source_files = 'Sources/SwiftCore/*'
    end

    spec.subspec 'Foundation' do |subspec|
        subspec.source_files = 'Sources/Foundation/*'
    end

    spec.subspec 'QuartzCore' do |subspec|
        subspec.ios.frameworks = 'QuartzCore'
        subspec.source_files = 'Sources/QuartzCore/*'
    end

    spec.subspec 'UIKit' do |subspec|
        subspec.ios.frameworks = 'UIKit'
        subspec.source_files = 'Sources/UIKit/*'
        subspec.dependency 'PrettyExtensionsKit/SwiftCore'
    end
    spec.subspec 'CoreLocation' do |subspec|
        subspec.ios.frameworks = 'CoreLocation'
        subspec.source_files = 'Sources/CoreLocation/*'
        subspec.dependency 'PrettyExtensionsKit/SwiftCore'
    end
end
