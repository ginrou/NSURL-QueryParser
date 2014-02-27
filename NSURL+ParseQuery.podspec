# -*- coding: utf-8 -*-
#
#  Be sure to run `pod spec lint NSURL+ParseQuery.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "NSURL+ParseQuery"
  s.version      = "0.0.1"
  s.summary      = "Simple URL query parser convert to NSDictionary"

  s.homepage     = "http://EXAMPLE/NSURL+ParseQuery"
  s.license      = 'MIT (example)'
  s.author             = { "Yuichi Takeda" => "ginrou799@gmail.com" }

  s.platform     = :ios
  s.source       = { :git => "http://EXAMPLE/NSURL+ParseQuery.git", :tag => "0.0.1" }

  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true


end
