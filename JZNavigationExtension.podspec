Pod::Spec.new do |s|
  s.name         = "JZNavigationExtension"
  s.version      = "1.4.0.1"
  s.summary      = "Integrates some convenient functions and open some hide property for UINavigationController."
  s.description  = "The 'UINavigationController+JZExtension' category integrates some convenient functions for your UINavigationController. Just pod in 3 files and no need for any setups."
  s.homepage     = "https://github.com/JazysYu/JZNavigationExtension"
  s.social_media_url   = "http://weibo.com/JazysYu"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "JazysYu" => "https://github.com/JazysYu" }
  s.platform = :ios, "7.0"
  s.source = { :git => "https://github.com/JazysYu/JZNavigationExtension.git", :tag => s.version }
  s.requires_arc = true

  s.subspec 'Public' do |ss|
    ss.dependecy 'JZNavigationExtension/Private'
    ss.source_files = "JZNavigationExtension/Public/*.{h,m}"
  end

  s.subspec 'Private' do |ss|
    ss.dependency 'JZNavigationExtension/Public'
    ss.source_files = 'JZNavigationExtension/Private/*.{h,m}'
  end

end
