# RNMLKitImageLabeling.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNMLKitImageLabeling"
  s.version      = package["version"]
  s.summary      = package["description"]

  s.homepage     = "https://github.com/duypx/react-native-ml-kit"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "DuyPX" => "duy.kull@gmail.com" }
  s.platforms    = { :ios => "15.1" }
  s.source       = { :git => "https://github.com/duypx/react-native-ml-kit.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "GoogleMLKit/ImageLabeling", "7.0.0"
end
