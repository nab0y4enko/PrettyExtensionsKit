Pod::Spec.new do |spec|
    spec.name = "PrettyExtensionsKit"
    spec.module_name = "PrettyExtensionsKit"
    spec.version = "0.4.1"
    spec.summary = "A pretty set of extensions for Swift."
    spec.homepage = "https://github.com/nab0y4enko/PrettyExtensionsKit"
    spec.license = 'MIT'
    spec.author = { "Oleksii Naboichenko" => "oleksii.naboichenko@gmail.com" }
    spec.social_media_url = "https://twitter.com/nab0y4enko"
    spec.source = { :git => "https://github.com/nab0y4enko/PrettyExtensionsKit.git", :tag => "#{spec.version}" }

    spec.swift_versions = ['5.0', '5.1']
    
    spec.frameworks = ['Foundation', 'CoreLocation']
    
    spec.ios.deployment_target = '10.0'
    spec.ios.frameworks = ['UIKit', 'QuartzCore']
    spec.ios.source_files = [
        'Sources/SwiftCore/*',
        'Sources/Foundation/*',
        'Sources/CoreLocation/*',
        'Sources/QuartzCore/*',
        'Sources/UIKit/*'
    ]
    
    spec.osx.deployment_target = '10.14'
    spec.osx.source_files = [
        'Sources/SwiftCore/*',
        'Sources/Foundation/*',
        'Sources/CoreLocation/*'
    ]
end
