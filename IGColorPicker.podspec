Pod::Spec.new do |s|
s.name             = 'IGColorPicker'
s.version          = '0.4.2'
s.summary          = 'A customizable color picker for iOS in Swift'

s.description      = <<-DESC
IGColorPicker is a fantastic color picker written in Swift. Developers can use our color picker just like we do in crystal.io or thay can customize it with all the available features.
DESC

s.homepage         = 'https://github.com/iGenius-Srl/IGColorPicker'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Andrea Antonioni' => 'andreaantonioni97@gmail.com' }
s.source           = { :git => 'https://github.com/iGenius-Srl/IGColorPicker.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.3'

s.source_files = 'IGColorPicker/Classes/**/*'

s.dependency 'M13Checkbox', '~> 3.3.2'
end
