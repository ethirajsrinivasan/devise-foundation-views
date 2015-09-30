# DeviseFoundationViews

[![Build Status](https://travis-ci.org/ethirajsrinivasan/devise-foundation-views.svg?branch=master)](https://travis-ci.org/ethirajsrinivasan/devise-foundation-views)
[![Code Climate](https://codeclimate.com/github/ethirajsrinivasan/devise-foundation-views/badges/gpa.svg)](https://codeclimate.com/github/ethirajsrinivasan/devise-foundation-views)
[![security](https://hakiri.io/github/ethirajsrinivasan/devise-foundation-views/master.svg)](https://hakiri.io/github/ethirajsrinivasan/devise-foundation-views/master)

DeviseFoundationViews gem provides you with a foundation based devise views

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'devise-foundation-views'
```

And then execute:

    $ bundle install

To use this gem add this require statement to your application.css file:

    # SCSS
	*= require devise_foundation_views_scss

    # LESS
    *= require devise_foundation_views_less

you can install the required translations in your config/locales through the generator devise:views:locale, eg.

	rails g devise:views:locale it

will generate config/locales/devise.views.it.yml

## Customizing Views

The devise:views:foundation_templates generator will copy all views to your application, so you can modify the files as you wish:

	rails g devise:views:foundation_templates

Support is also provided to generate slim or haml files eg

   	rails g devise:views:foundation_templates slim

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ethirajsrinivasan/devise-foundation-views.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

This gem is based on the idea of devise-bootstrap-views