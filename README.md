# DeviseFoundationViews

[![CI](https://github.com/ethirajsrinivasan/devise-foundation-views/actions/workflows/ci.yml/badge.svg)](https://github.com/ethirajsrinivasan/devise-foundation-views/actions/workflows/ci.yml)
[![Gem Version](https://badge.fury.io/rb/devise-foundation-views.svg)](https://badge.fury.io/rb/devise-foundation-views)

Devise authentication views styled with **Foundation for Sites 6**, aligned with the current [Devise](https://github.com/heartcombo/devise) view templates.

## Requirements

- Ruby >= 3.0
- Rails >= 6.0
- [Devise](https://github.com/heartcombo/devise) >= 4.9, < 6.0
  - **Devise 5** requires **Rails 7+**
- **Foundation 6** CSS in your application (not included in this gem)

## Installation

Add to your Gemfile:

```ruby
gem 'devise-foundation-views', '~> 1.0.1'
```

```bash
bundle install
```

Include gem styles in `application.css`.

**Sprockets without Sass** (recommended — no `sassc` required):

```css
*= require devise_foundation_views
```

**With Sass** (requires `sassc` or `dartsass-rails` in the host app):

```css
*= require devise_foundation_views_scss
```

Or Less:

```css
*= require devise_foundation_views_less
```

Ensure your app loads **Foundation 6** (e.g. via `foundation-rails`, npm, or CDN).

### Centered auth layout (optional)

Copy a minimal Devise-only layout (centered card, no app chrome):

```bash
rails g devise:views:foundation_layout
```

Then add to `ApplicationController`:

```ruby
layout :layout_for_controller

private

def layout_for_controller
  devise_controller? ? "devise" : "application"
end
```

And in `application.css`:

```css
*= require devise_foundation_layout
```

### Sign out without Turbo

If you do not use Turbo, sign out must use **DELETE**, not GET:

```erb
<%= button_to "Sign out", destroy_user_session_path, method: :delete, class: "button" %>
```

`link_to ..., data: { turbo_method: :delete }` only works when `turbo-rails` is loaded.

## Generators

Copy locale files:

```bash
rails g devise:views:locale it
```

Copy Foundation-styled Devise views into your app:

```bash
rails g devise:views:foundation_templates
rails g devise:views:foundation_templates slim
rails g devise:views:foundation_templates haml
```

## Features (1.0.x)

- Foundation 6 XY grid layout (`grid-container`, `grid-x`, `cell`)
- `devise/shared/_error_messages` partial (Devise standard)
- ERB, HAML, and Slim templates
- Devise 4.9+ and 5.x compatible fields (`autocomplete`, `pending_reconfirmation?`, Turbo confirm on delete)
- OmniAuth providers use `button_to` with `data-turbo="false"`

## Error messages

Prefer the shared partial (used in all bundled views):

```erb
<%= render "devise/shared/error_messages", resource: resource %>
```

`foundation_devise_error_messages!` remains available but is deprecated.

## Upgrading from 0.x

Version **1.0.0** requires Ruby 3.0+, Rails 6.0+, **Foundation 6**, and Devise 4.9+. See [UPGRADE_GUIDE.md](UPGRADE_GUIDE.md).

## Contributing

Bug reports and pull requests are welcome at https://github.com/ethirajsrinivasan/devise-foundation-views.

## License

MIT — see [LICENSE.txt](LICENSE.txt).
