Pod::Spec.new do |s|
  s.name         = 'DateTools'
  s.version      = '2.0.1'
  s.summary      = 'Dates and time made easy in Objective-C'
  s.homepage     = 'https://github.com/MatthewYork/DateTools'

  s.description  = 'DateTools was written to streamline date and time handling in Objective-C.'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Matthew York" => "my3681@gmail.com" }

  s.source       = { :git => "https://github.com/runtastic/DateTools.git",
                     :tag => "v#{s.version.to_s}" }

  s.platforms = { :ios => '7.0', :osx => '10.7' }
  s.requires_arc = true

  s.preserve_path = 'Project.swift'

  s.source_files = 'DateTools/DateTools'
  s.resources    = 'DateTools/DateTools/DateTools.bundle'
end
