# frozen_string_literal: true

# Maintain your gem's version:
require_relative "lib/publify_textfilter_code/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "publify_textfilter_code"
  s.version     = PublifyTextfilterCode::VERSION
  s.authors     = ["Matijs van Zuijlen"]
  s.email       = ["matijs@matijs.net"]
  s.homepage    = "https://publify.github.io/"
  s.summary     = "Code text filter for the Publify blogging system."
  s.description = "Code text filter sidebar for the Publify blogging system."
  s.license     = "MIT"

  s.files       = File.open("Manifest.txt").readlines.map(&:chomp)

  s.required_ruby_version = ">= 2.7.0"

  s.add_dependency "coderay", "~> 1.1.0"
  s.add_dependency "htmlentities", "~> 4.3"
  s.add_dependency "publify_core", "~> 10.0.0"

  s.add_development_dependency "rspec-rails", "~> 6.0"
  s.add_development_dependency "rubocop", "~> 1.55.1"
  s.add_development_dependency "rubocop-performance", "~> 1.18.0"
  s.add_development_dependency "rubocop-rails", "~> 2.20.2"
  s.add_development_dependency "rubocop-rspec", "~> 2.22.0"
  s.add_development_dependency "simplecov", "~> 0.22.0"
  s.add_development_dependency "sqlite3", "~> 1.4"
  s.metadata["rubygems_mfa_required"] = "true"
end
