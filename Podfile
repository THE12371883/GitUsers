source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '12.4'
inhibit_all_warnings!
use_frameworks!

def network
  pod 'Alamofire', '~> 5.2'
end

def utilities
  pod 'IQKeyboardManagerSwift'
  pod 'SwiftyJSON'
  pod 'RealmSwift'
end

def xctools
  pod 'SwiftLint'
end

target 'GitUsers' do

  utilities
  network

  target 'GitUsersTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'GitUsersUITests' do
    # Pods for testing
  end

end

xctools

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if Gem::Version.new('12.4') > Gem::Version.new(config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'])
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.4'
      end
    end
  end
end
