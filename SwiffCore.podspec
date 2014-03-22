Pod::Spec.new do |s|
  s.name         = "SwiffCore"
  s.version      = "1.0.0"
  s.summary      = ".swf parsing and rendering framework for Mac OS X and iOS"
  s.homepage     = "http://www.musictheory.net/"
  s.author       = { "musictheory" => "example@example.com" }
  s.source       = { :git => "https://github.com/noughts/SwiffCore", :tag => "#{s.version}" }
  s.license      = { :type => 'BSD', :file => 'licence' }

  s.platform = :ios
  s.requires_arc = true
  s.source_files = 'SwiffCore/**/*.{h,m,xcconfig}'
  # s.resource = "SwiffCore/SwiffCore.bundle"
end
