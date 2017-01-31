Pod::Spec.new do |s|
    s.name         = "PrettyExtensionsKit"
    s.version      = "0.1.4.1"
    s.summary      = "A pretty set of extensions for the development on Swift."

    s.description = <<-DESC
                    My pretty set of extensions for the development on Swift.
                    DESC

    s.homepage     = "https://github.com/nab0y4enko/PrettyExtensionsKit"
    s.license      = "MIT"

    s.author              = { "Oleksii Naboichenko" => "nab0y4enko@gmail.com" }
    s.social_media_url    = "https://twitter.com/nab0y4enko"

    s.platform        = :ios, "8.0"

    s.source          = { :git => "https://github.com/nab0y4enko/PrettyExtensionsKit.git", :tag => "#{s.version}" }

    s.source_files    = "Sources/**/*.swift"

    s.frameworks      = "Foundation", "UIKit", "CoreGraphics", "QuartzCore"

    s.requires_arc    = true
end
