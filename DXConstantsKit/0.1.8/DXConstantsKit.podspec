#
# Be sure to run `pod lib lint DXConstantsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DXConstantsKit'
  s.version          = '0.1.8'
  s.summary          = 'A short description of DXConstantsKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Chj1995/DXConstantsKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chj1995' => 'chenhj@actumtech.com' }
  s.source           = { :git => 'https://github.com/Chj1995/DXConstantsKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DXConstantsKit/Classes/DXConstantsKit.h'
  #--------分层--------#
  s.subspec 'Other' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Other/*'
  end
  s.subspec 'Color' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Color/*'
  end
  s.subspec 'Font' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Font/*'
    ss.dependency 'DXConstantsKit/Other'
  end
  s.subspec 'Frame' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Frame/*'
  end
  s.subspec 'Sandbox' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Sandbox/*'
  end
  s.subspec 'Service' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Service/*'
  end
  s.subspec 'Tool' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Tool/*'
  end
  s.subspec 'Type' do |ss|
    ss.source_files = 'DXConstantsKit/Classes/Type/*'
  end
  
  # s.resource_bundles = {
  #   'DXConstantsKit' => ['DXConstantsKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
