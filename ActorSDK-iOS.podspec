@version = "0.0.1"

Pod::Spec.new do |s|
  s.name         		= "ActorSDK-iOS"
  s.version      		= @version
  s.summary      		= "Actor SDK for intergration Actor Messaging to your apps"
  s.homepage        = "https://actor.im/"
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author       		= { "Actor LLC" => "steve@actor.im" }
  s.source          = { :git => "https://github.com/actorapp/ActorSDK-iOS.git", :tag => "v#{s.version}" }

  s.platform     		= :ios, "8.0"
  s.requires_arc 		= true

  s.prepare_command = <<-CMD
      Scripts/download.sh
  CMD

  s.dependency 'J2ObjC-Framework'

  s.preserve_paths = 'Frameworks/ActorSDK.framework'
  s.frameworks = 'ActorSDK'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ActorSDK-iOS/Frameworks"' }
end
