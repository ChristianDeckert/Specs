Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "CDTools"
s.summary = "My swift tool box."
s.requires_arc = true
s.version = "1.0.2"
s.license = { :type => "MIT", :file => "CDTools/LICENSE" }
s.author = { "Christian Deckert" => "Christian.Deckert@icloud.com" }
s.homepage = "https://github.com/ChristianDeckert/CDTools"
s.source = { :git => "https://github.com/ChristianDeckert/CDTools.git", :branch => "master" }
#s.source = { :git => "https://github.com/ChristianDeckert/CDTools.git", :branch => "master", :tag => "#{s.version}"}
#s.source = { :git => "https://github.com/ChristianDeckert/CDTools.git", :commit => "09285da0bdd09b25c7bb3585848c65934be7f2c8" }

s.default_subspec = 'Default'

  s.subspec 'Default' do |ss|

    ss.frameworks = 'UIKit', 'Foundation'
    ss.source_files = "CDTools/**/*.{swift}", "CDTools/Foundation/**/*.*", "CDTools/UI/**/*.*"
    ss.resource_bundles = {
      "CDToolsResources" => ["CDTools/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"]
    }

    #ss.resources = "CDTools/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
    #ss.dependency 'Alamofire'

  end

end