Pod::Spec.new do |s|

  s.name         = "NSURL+ParseQuery"
  s.version      = "0.0.1"
  s.summary      = "Simple URL query parser convert to NSDictionary"

  s.homepage     = "https://github.com/ginrou/NSURL-QueryParser"
  s.license      = 'MIT'
  s.author       = { "Yuichi Takeda" => "ginrou799@gmail.com" }

  s.platform     = :ios
  s.source       = { :git => "https://github.com/ginrou/NSURL-QueryParser.git", :commit => "bd55d0b9a220c8ba1570d5194908424533cc3a4c" }

  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true

end
