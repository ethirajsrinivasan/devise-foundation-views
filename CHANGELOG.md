# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2026-05-30

### Breaking Changes

- Minimum Ruby version increased to 3.0
- Minimum Rails version increased to 6.0
- Explicit Devise 4.x runtime dependency

### Added

- Explicit `railties` runtime dependency (>= 6.0, < 9.0)
- GitHub Actions CI with Ruby and Rails matrix
- RuboCop configuration and linting in CI
- bundler-audit security scanning in CI
- RSpec test suite
- CHANGELOG, UPGRADE_GUIDE, and CODE_OF_CONDUCT
- bin/setup and bin/console

### Changed

- Modernized gemspec and development dependencies
- Updated README with Requirements section
- Removed Travis CI

## [0.1.1] - Previous Release

- Foundation styled Devise views for ERB, HAML, and Slim
- Locale generators and helper methods

---

For upgrade instructions, see [UPGRADE_GUIDE.md](UPGRADE_GUIDE.md)
