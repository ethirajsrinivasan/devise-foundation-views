# Upgrade Guide: Devise-Foundation-Views 0.x to 1.0

## Overview

Devise-Foundation-Views 1.0 modernizes the gem for current Ruby, Rails, and Devise versions.

## What Changed

| Component | Old Version | New Version |
|-----------|-------------|-------------|
| Ruby | >= 1.9.3 | >= 3.0 |
| Rails | (implicit) | >= 6.0 |
| Devise | (implicit) | >= 4.0, < 5.0 |

## Upgrade Steps

1. Ensure your application runs Ruby 3.0+, Rails 6.0+, and Devise 4.x+
2. Update your Gemfile: `gem 'devise-foundation-views', '~> 1.0'`
3. Run `bundle update devise-foundation-views`
4. Verify Devise views and stylesheets still render correctly

## Getting Help

- [GitHub Issues](https://github.com/ethirajsrinivasan/devise-foundation-views/issues)
- [CHANGELOG.md](CHANGELOG.md)
