require 'rails'
require 'devise_foundation_views_helper'
module DeviseFoundationViews
  class Engine < ::Rails::Engine
  end

  class Railtie < ::Rails::Railtie
    initializer 'rails-devise-foundation-views' do |app|
      DeviseFoundationViews::Railtie.instance_eval do
        pattern = pattern_from app.config.i18n.available_locales

        files = Dir[File.join(File.dirname(__FILE__), '../locales', "#{pattern}.yml")]
        I18n.load_path.concat(files)

        ActionView::Base.send :include, DeviseFoundationViewsHelper
      end
    end

    protected

    def self.pattern_from(args)
      array = Array(args || [])
      array.blank? ? '*' : "{#{array.join ','}}"
    end
  end
end


