Pod::Spec.new do |s|
  s.name     = 'DAKeyboardControl'
  s.version  = '2.2.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'Easily add keyboard awareness and scrolling dismissal.'
  s.homepage = 'https://github.com/danielamitay/DAKeyboardControl'
  s.author   = { 'Daniel Amitay' => 'hello@danielamitay.com' }
  s.source   = { :git => 'https://github.com/danielamitay/DAKeyboardControl.git', :tag => s.version.to_s }
  s.source_files = 'DAKeyboardControl/*.{h,m}'
  s.requires_arc = true
end