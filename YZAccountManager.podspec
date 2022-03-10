Pod::Spec.new do |s|
   s.platform = :ios
   s.ios.deployment_target = '11.0'
   s.name = "YZAccountManager"
   s.summary = "YZAccountManager to store account data in keychain"
   s.requires_arc = true

   s.version = "1.1.0"

   s.author = { "Yaroslav Zavyalov" => "yaroslavzavyalov1@gmail.com" }

   s.homepage = "https://github.com/YarZav/YZAccountManager"

   s.source = { :git => "https://github.com/YarZav/YZAccountManager.git", :tag => "#{s.version}"}

   s.framework = "UIKit"

   s.source_files = "YZAccountManager/**/*.{swift}"
end