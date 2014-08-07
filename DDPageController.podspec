Pod::Spec.new do |s|
  s.name         = "DDPageController"
  s.version      = "0.8.0"
  s.summary      = "DDPageController"
  s.homepage     = "https://github.com/dividual/DDPageController"
  s.author       = { "dividual" => "contact@dividual.jp" }
  s.source       = { :git => "https://github.com/dividual/DDPageController.git", :tag => "#{s.version}" }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.platform = :ios
  s.requires_arc = true

  s.source_files = 'DDPageController/**/*.{h,m}'
end
