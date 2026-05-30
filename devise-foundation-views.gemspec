# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "devise-foundation-views"
  spec.version       = DeviseFoundationViews::VERSION
  spec.authors       = ["ethi"]
  spec.email         = ["ethirajsrinivasan@gmail.com"]

  spec.summary       = "Devise views based on Foundation 6"
  spec.description   = "A Rails engine providing Foundation 6 styled Devise views (aligned with current Devise templates) in ERB, HAML, and Slim"
  spec.homepage      = "https://github.com/ethirajsrinivasan/devise-foundation-views"
  spec.license       = "MIT"

  spec.metadata = {
    "allowed_push_host" => "https://rubygems.org",
    "homepage_uri" => spec.homepage,
    "source_code_uri" => "https://github.com/ethirajsrinivasan/devise-foundation-views",
    "bug_tracker_uri" => "https://github.com/ethirajsrinivasan/devise-foundation-views/issues",
    "changelog_uri" => "https://github.com/ethirajsrinivasan/devise-foundation-views/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/ethirajsrinivasan/devise-foundation-views/blob/master/README.md",
    "rubygems_mfa_required" => "true"
  }

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.0"

  spec.add_runtime_dependency "devise", ">= 4.9", "< 6.0"
  spec.add_runtime_dependency "railties", ">= 6.0", "< 9.0"

  spec.add_development_dependency "bundler-audit", "~> 0.9"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "rubocop", "~> 1.50"
end
