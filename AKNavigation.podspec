
Pod::Spec.new do |s|

  s.name         = "AKNavigation"
  s.version      = "1.0.7"
  s.summary      = "iOS navigation framework written by swift"

  s.description  = <<-DESC
                  iOS navigation framework written by swift, extends of UINavigationer and UIViewController
                   DESC

  s.homepage     = "https://github.com/wangyaqing/AKNavigation"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "arkin" => "moody.wyq@foxmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/wangyaqing/AKNavigation.git", :tag => s.version.to_s }
  s.source_files     = 'Src/*.swift'
  s.resources = "Src/Resources/*.png"

end
