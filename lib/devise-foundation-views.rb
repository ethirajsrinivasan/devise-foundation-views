# frozen_string_literal: true

require "rails"
require "devise_foundation_views_helper"
require "devise_layout_helper"

module DeviseFoundationViews
  class Engine < Rails::Engine
  end

  class Railtie < Rails::Railtie
    initializer "devise-foundation-views" do |app|
      pattern = DeviseFoundationViews::Railtie.pattern_from(app.config.i18n.available_locales)
      files = Dir[File.join(__dir__, "../locales", "#{pattern}.yml")]
      I18n.load_path.concat(files)
      ActionView::Base.include DeviseFoundationViewsHelper
      ActionView::Base.include DeviseLayoutHelper
    end

    def self.pattern_from(args)
      array = Array(args)
      array.blank? ? "*" : "{#{array.join(',')}}"
    end
  end
end
