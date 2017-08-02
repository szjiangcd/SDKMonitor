#
#  Be sure to run `pod spec lint BDC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SDKMonitor"
  s.version      = "1.0.5"
  s.summary      = "Monitor SDK"


  s.description  = <<-DESC
                      you can use Monitor to track your user behavior in your app.
                   DESC

  s.platform     = :ios, "8.0"
  s.homepage     = "https://github.com/szjiangcd/SDKMonitor"
 

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
 

  s.author             = { "szjiangcd" => "chuande.jiang@bqjr.cn" }


  s.source       = { :git => "https://github.com/szjiangcd/SDKMonitor.git", :tag => "#{s.version}" }

  s.resource_bundles = {
    'SDKLibraryBundle' => ['SDKMonitorFrameworks/SDKLibraryBundle.bundle']
  }

  s.frameworks = 'Foundation', 'CoreTelephony','AddressBook','MobileCoreServices','SystemConfiguration','CoreFoundation','EventKit','CoreLocation'
  s.source_files = 'SDKMonitorFrameworks/SDKMonitor.framework/Headers/*.{h}'
  s.vendored_frameworks = 'SDKMonitorFrameworks/SDKMonitor.framework'
  s.public_header_files = 'SDKMonitorFrameworks/SDKMonitor.framework/Headers/SDKMonitor.h'  
  s.libraries = "sqlite3.0"
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC -all_load" }


end
