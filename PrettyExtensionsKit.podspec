Pod::Spec.new do |s|
    s.name              = "PrettyExtensionsKit"
    s.module_name       = "PrettyExtensionsKit"
    s.version           = "0.2.0"
    s.summary           = "A pretty set of extensions for Swift."
    s.description       = "A pretty set of extensions, which I use when developing applications based on Swift."
    s.homepage          = "https://github.com/nab0y4enko/PrettyExtensionsKit"
    s.license           = 'MIT'
    s.author            = { "Oleksii Naboichenko" => "nab0y4enko@gmail.com" }
    s.social_media_url  = "https://twitter.com/nab0y4enko"
   
    s.source            = { :git => "https://github.com/nab0y4enko/PrettyExtensionsKit.git", :tag => "#{s.version}" }

    s.frameworks        = "Foundation"

    s.ios.deployment_target = '10.0'

    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    
    s.default_subspecs = 'SwiftCore', 'Foundation', 'CoreGraphics', 'QuartzCore', 'UIKit'

    s.subspec 'SwiftCore' do |swiftCoreSubspec|
        swiftCoreSubspec.ios.frameworks = 'UIKit'
        swiftCoreSubspec.source_files = 'Sources/SwiftCore/*'
    end

    s.subspec 'Foundation' do |foundationSubspec|
        foundationSubspec.ios.frameworks = 'Foundation'
        foundationSubspec.source_files = 'Sources/Foundation/*'
    end

    s.subspec 'CoreGraphics' do |coreGraphicsSubspec|
        coreGraphicsSubspec.ios.frameworks = 'CoreGraphics'
        coreGraphicsSubspec.source_files = 'Sources/CoreGraphics/*'
        coreGraphicsSubspec.dependency 'PrettyExtensionsKit/SwiftCore'
    end

    s.subspec 'QuartzCore' do |quartzCoreSubspec|
        quartzCoreSubspec.ios.frameworks = 'QuartzCore'
        quartzCoreSubspec.source_files = 'Sources/QuartzCore/*'
    end

    s.subspec 'UIKit' do |uiKitSubspec|
        uiKitSubspec.ios.frameworks = 'UIKit'
        uiKitSubspec.source_files = 'Sources/UIKit/*'
        uiKitSubspec.dependency 'PrettyExtensionsKit/SwiftCore'
        uiKitSubspec.dependency 'PrettyExtensionsKit/CoreGraphics'
    end
end
