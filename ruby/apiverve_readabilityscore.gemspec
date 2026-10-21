# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_readabilityscore"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Text Readability Score API - Ruby Client"
  spec.description   = "Text Readability Score calculates the readability score and grade level of any text across standard formulas. It returns Flesch Reading Ease, Gunning Fog, Coleman-Liau, syllable and word counts, an average grade level, and a target audience label."
  spec.homepage      = "https://apiverve.com/marketplace/readabilityscore?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/readabilityscore-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/readabilityscore"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
