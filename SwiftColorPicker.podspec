Pod::Spec.new do |s|
  s.name             = 'SwiftColorPicker'
  s.version          = '0.1.0'
  s.summary          = 'A customizeable color picker for iOS in Swift'

  s.description      = <<-DESC
                        SwiftColorPicker is a fantastic color picker written in Swift. Developers can use our color picker just like we do in crystal.io or thay can customize it with all the available features.
                       DESC

  s.homepage         = 'https://github.com/iGenius-Srl/SwiftColorPicker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrea Antonioni' => 'andreaantonioni97@gmail.com' }
  s.source           = { :git => 'https://github.com/iGenius-Srl/SwiftColorPicker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftColorPicker/Classes/**/*'
  
  s.dependency 'M13Checkbox', '~> 2.2.0'
end
