# DeviseFoundationViews

[![CI](https://github.com/ethirajsrinivasan/devise-foundation-views/actions/workflows/ci.yml/badge.svg)](https://github.com/ethirajsrinivasan/devise-foundation-views/actions/workflows/ci.yml)
[![Gem Version](https://badge.fury.io/rb/devise-foundation-views.svg)](https://badge.fury.io/rb/devise-foundation-views)

Devise views styled with the Foundation CSS framework.

## Requirements

- Ruby >= 3.0
- Rails >= 6.0
- Devise >= 4.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'devise-foundation-views'
```

And then execute:

```bash
bundle install
```

### Asset Pipeline Setup

Add to your `application.css`:

```css
/* SCSS */
*= require devise_foundation_views_scss

/* LESS */
*= require devise_foundation_views_less
```

Install locale files with the generator:

```bash
rails g devise:views:locale it
```

## Customizing Views

Copy Foundation-styled Devise views into your app:

```bash
rails g devise:views:foundation_templates
```

## Upgrading from 0.x to 1.0

Version 1.0.0 requires Ruby 3.0+, Rails 6.0+, and Devise 4.x+. See [UPGRADE_GUIDE.md](UPGRADE_GUIDE.md).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ethirajsrinivasan/devise-foundation-views. Contributors are expected to adhere to the [Contributor Covenant](CODE_OF_CONDUCT.md) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).
