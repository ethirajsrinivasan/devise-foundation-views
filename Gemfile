# frozen_string_literal: true

source "https://rubygems.org"

gemspec

if (rails_version = ENV.fetch("RAILS_VERSION", nil))
  gem "railties", "~> #{rails_version}.0"
end
