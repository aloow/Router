Pod::Spec.new do |s|
s.name         = 'Router'
s.version      = '1.0.0'
s.summary      = 'Router'
s.homepage     = 'https://github.com/aloow/Router.git'
s.license      = 'MIT'
s.authors      = "shaoqing"
s.platform     = :ios, '13.0'
s.source       = {:git => 'https://github.com/aloow/Router.git', :tag => s.version}
s.source_files = 'Router/Classes/*.{h,m}'
s.requires_arc = true
s.dependency "MGJRouter"
s.dependency "ModuleC"
s.dependency "ModuleD"
end
