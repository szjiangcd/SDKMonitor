#
# Be sure to run `pod lib lint SDKMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#



Pod::Spec.new do |s|

  s.name             = 'SDKMonitor'
  s.version          = '1.0.1'
  s.summary          = 'Monitor SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                              a monitor sdk.
                       DESC

  s.platform     = :ios, "8.0"

  s.homepage         = 'https://github.com/szjiangcd/SDKMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'acct<blob>=0xE69BB9E88C82E991AB' => 'chuande.jiang@bqjr.cn' }
  s.source           = { :git => 'https://github.com/szjiangcd/SDKMonitor.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.vendored_frameworks = "SDKMonitor.framework"
  s.libraries = "sqlite3"
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC -all_load" }
  
  # s.resource_bundles = {
  #   'SDKMonitor' => ['SDKMonitor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
