# Upgrade Guide: Devise-Foundation-Views

## 1.0.0 → 1.0.1

Patch release — no view markup changes required.

1. Update Gemfile: `gem 'devise-foundation-views', '~> 1.0.1'`
2. Prefer plain CSS (no Sass): `*= require devise_foundation_views` in `application.css`
3. Optional: `rails g devise:views:foundation_layout` for a centered Devise-only layout
4. Optional: `*= require devise_foundation_layout` when using that layout

---

## 0.x → 1.0.0

## Overview

**1.0.0** is the first modern release on RubyGems. It combines Ruby/Rails/Devise modernization with **Foundation 6** views aligned with current [Devise](https://github.com/heartcombo/devise) templates.

## What Changed

| Component | 0.1.1 | 1.0.0 |
|-----------|-------|-------|
| Ruby | >= 1.9.3 | **>= 3.0** |
| Rails | (implicit) | **>= 6.0** |
| Devise | (implicit) | **>= 4.9, < 6.0** (5.x on Rails 7+) |
| Foundation CSS | 5.x markup | **6.x** (XY grid) |
| View templates | Foundation 5 | Foundation 6 + current Devise fields |

## Upgrade Steps

### 1. Update Gemfile

```ruby
gem 'devise-foundation-views', '~> 1.0'
```

For Devise 5 (Rails 7+ only):

```ruby
gem 'devise', '~> 5.0'
```

### 2. Upgrade Ruby, Rails, and Foundation

- Ruby 3.0+ and Rails 6.0+ (Rails 7+ for Devise 5)
- Install **Foundation for Sites 6** in your app (this gem does not bundle Foundation CSS)

### 3. Regenerate views (if copied into your app)

```bash
rails g devise:views:foundation_templates
rails g devise:views:foundation_templates slim
rails g devise:views:foundation_templates haml
```

### 4. Update error messages (if customized)

```erb
<%# Before %>
<%= foundation_devise_error_messages! %>

<%# After %>
<%= render "devise/shared/error_messages", resource: resource %>
```

### 5. Verify stylesheets

```css
*= require devise_foundation_views_scss
```

Ensure Foundation 6 CSS loads in your application.

### Markup changes (Foundation 5 → 6)

| 0.x (Foundation 5) | 1.0.0 (Foundation 6) |
|--------------------|----------------------|
| `row` / `columns` | `grid-x` / `cell` |
| `alert-box alert` | `callout alert` |
| `button expand` | `button expanded` |
| `.login-box` | `.devise-form-card` |

## Getting Help

- [GitHub Issues](https://github.com/ethirajsrinivasan/devise-foundation-views/issues)
- [CHANGELOG.md](CHANGELOG.md)
