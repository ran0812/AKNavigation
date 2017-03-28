
Pod::Spec.new do |s|

  s.name         = "AKNavigation"
  s.version      = "0.0.1"
  s.summary      = "iOS navigation framework written by swift"

  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/wangyaqing/AKNavigation"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author             = { "arkin" => "moody.wyq@foxmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/wangyaqing/AKNavigation.git", :tag => s.version.to_s }
  s.source_files     = 'AKNavigation/Src/*.swift'
  s.resources = "AKNavigation/Src/Resources/*.png"

end
