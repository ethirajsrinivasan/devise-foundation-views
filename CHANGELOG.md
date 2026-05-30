# Changelog

All notable changes to this project will be documented in this file.

## [1.0.1] - 2026-05-30

### Added

- Plain CSS asset `devise_foundation_views.css` (no Sass compiler required)
- Optional `devise_foundation_layout.css` for centered Devise-only pages
- `DeviseLayoutHelper#devise_page_title` for auth page titles
- Generator `rails g devise:views:foundation_layout`

### Fixed

- `devise_foundation_layout.css` header comment no longer triggers a bogus Sprockets `require` directive

### Changed

- `devise_foundation_views_less.less` synced with SCSS (labels, inputs, cell spacing)
- README: Sprockets without Sass, sign-out with `button_to`, optional layout generator
- `_foundation_layout` h2 uses `devise-form-card__title` for layout styling

## [1.0.0] - 2026-05-30

First modern release on RubyGems (from **0.1.1**).

### Added

- **Foundation 6** markup (`grid-container`, `grid-x`, `cell`, `callout`, `button expanded`)
- **`devise/shared/_error_messages`** partial (matches current Devise generator output)
- **`devise/shared/_foundation_layout`** wrapper partial for consistent form cards
- Devise **5.x** support (`devise >= 4.9, < 6.0`; Devise 5 requires Rails 7+)
- Views aligned with [heartcombo/devise](https://github.com/heartcombo/devise) main templates:
  - `autocomplete` attributes on fields
  - `pending_reconfirmation?` on registration edit and confirmation resend
  - `button_to` for account deletion with `turbo_confirm`
  - OmniAuth sign-in via `button_to` with `data: { turbo: false }`
- Explicit `railties` runtime dependency (>= 6.0, < 9.0)
- GitHub Actions CI with Ruby and Rails matrix (including Devise 5 job)
- RuboCop configuration and bundler-audit in CI
- RSpec test suite
- CHANGELOG, UPGRADE_GUIDE, and CODE_OF_CONDUCT
- bin/setup and bin/console

### Changed

- All ERB, HAML, and Slim view templates rewritten for **Foundation 6** (was Foundation 5 in 0.x)
- `foundation_devise_error_messages!` now renders the shared error partial (deprecated in favor of the partial)
- Stylesheets updated for `.devise-form-card`
- Modernized gemspec and development dependencies
- Minimum Ruby **3.0**, Rails **6.0**, Devise **4.9+**

### Removed

- Foundation 5 classes (`medium-6`, `large-12 columns`, `alert-box`, `button expand`)
- Travis CI

### Breaking Changes (from 0.1.1)

- **Ruby** >= 3.0 (was >= 1.9.3)
- **Rails** >= 6.0
- **Foundation 6 required** in the host application (0.x used Foundation 5 markup)
- **View markup changed** — re-run `rails g devise:views:foundation_templates` after upgrading
- Prefer `render "devise/shared/error_messages", resource: resource` over `foundation_devise_error_messages!`

See [UPGRADE_GUIDE.md](UPGRADE_GUIDE.md).

## [0.1.1] - 2016-05-06

- Foundation 5 styled Devise views for ERB, HAML, and Slim
- Locale generators and helper methods

---

For upgrade instructions, see [UPGRADE_GUIDE.md](UPGRADE_GUIDE.md)
