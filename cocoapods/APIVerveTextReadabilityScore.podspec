Pod::Spec.new do |s|
  s.name             = 'APIVerveTextReadabilityScore'
  s.version          = '1.2.3'
  s.summary          = 'Text Readability Score calculates the readability score and grade level of any text across standard formulas.'
  s.description      = <<-'DESC'
Text Readability Score calculates the readability score and grade level of any text across standard formulas. It returns Flesch Reading Ease, Gunning Fog, Coleman-Liau, syllable and word counts, an average grade level, and a target audience label.

This iOS/macOS SDK provides a convenient way to access the Text Readability Score from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/readabilityscore?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/readabilityscore-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTextReadabilityScore/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
