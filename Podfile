# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Instalook-User' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for Instalook-User
  pod 'Alamofire'
  pod 'AlamofireObjectMapper'
  pod 'ObjectMapper', '~> 2.2.8'
  pod 'PromiseKit', '~> 4.4'
  pod 'SDWebImage'
  pod 'Cosmos', git: 'https://github.com/marketplacer/Cosmos.git', tag: '8.0.2'
  
  target 'Instalook-UserTests' do
    inherit! :search_paths
    # Pods for testing
  end
  
  target 'Instalook-UserUITests' do
    inherit! :search_paths
    # Pods for testing
  end
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
