#
# Be sure to run `pod lib lint ASHProgressView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASHProgressView'
  s.version          = '0.1.0'
  s.summary          = 'A customiseable progess view for iOS applications.'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This pod empowers your UIViews to show a progess indicator that is customisable in four different ways. To use this:
  
  myUIView.showProgressView()
  myUIView.hideProgressView()
  
  This is all you need to use this.
  Also, you can use four different type of styles to customise it's appearence.
  
  //.fourCircles(nil, .black.withAlphaComponent(0.4), [.white])
  //.threeCircles(nil, .black.withAlphaComponent(0.4), [.white])
  //.plainCircle("Loading", .red)
  //.gradientCircle("Loading", [.red, .systemIndigo])
  
  Use the following styles in the following way:
  
  myUIView.showProgressView(style: 'anyAboveStyle')
  or
  set once the standard style:
  ASHProgessViewStyle.standard = 'anyAboveStyle'
                       DESC

  s.homepage         = 'https://github.com/sheikhamais/ASHProgressView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Amais Sheikh' => 'sheikhamais@gmail.com' }
  s.source           = { :git => 'https://github.com/sheikhamais/ASHProgressView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'ASHProgressView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ASHProgressView' => ['ASHProgressView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'SwiftUI'
  # s.dependency 'AFNetworking', '~> 2.3'
end
