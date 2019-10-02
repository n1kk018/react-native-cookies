require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name                = package['name']
  s.version             = "3.3.0"
  s.summary             = package['description']
  s.description         = <<-DESC
                            Cookie Manager for React Native
                         DESC
  s.homepage            = "https://github.com/n1kk018/react-native-cookies"
  s.license             = package['license']
  s.author              = "joeferraro"
  s.source              = { :git => "git@github.com:n1kk018/react-native-cookies.git", :tag => "v#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, "8.0"
  s.preserve_paths      = "*.framework"
  s.source_files        = 'RNCookieManagerIOS/*.{h,m}'
  s.dependency 'React'
end
