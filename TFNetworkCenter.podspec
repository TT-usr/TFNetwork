#
# Be sure to run `pod lib lint TFNetworkCenter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TFNetworkCenter'
  s.version          = '0.1.0'
  s.summary          = '顶楼的网络中心组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                    顶楼的网络中心组件,重要组成
                       DESC

  s.homepage         = 'https://github.com/zichenJack/TFNetwork.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ytc19930125@gmail.com' => ' JackYao' }
  s.source           = { :git => 'https://github.com/ytc19930125@gmail.com/TFNetworkCenter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TFNetworkCenter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TFNetworkCenter' => ['TFNetworkCenter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire'
end
