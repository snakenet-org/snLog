#
# Be sure to run `pod lib lint snLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'snLog'
  s.version          = '0.1.0'
  s.summary          = 'Lightweight scalable logging for debug purposes'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Lightweight and quickly scaleable logging for iOS Apps during Debug phase. Just add modules via [Log activateModule: @"module-name"] and you can log via the activated module.
[Log i:@"tag", Text: @"text"] can be used for information output
[Log e:@"tag", Text: @"text"] can be used for error output
[Log w:@"tag", Text: @"text"] can be used for warning output
                       DESC

  s.homepage         = 'https://github.com/snakeNet-org/snLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Marc Fiedler' => 'marc@snakenet.org' }
  s.source           = { :git => 'https://github.com/snakeNet-org/snLog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'snLog/Classes/**/*'
  
  # s.resource_bundles = {
  #   'snLog' => ['snLog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
