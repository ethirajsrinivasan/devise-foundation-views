# frozen_string_literal: true

module Devise
  module Views
    class FoundationTemplatesGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../../app/views", __dir__)
      argument :template_name, type: :string, default: "devise"

      def copy_views
        directory(template, Rails.root.join("app", "views", "devise"))
      end

      private

      def template
        case template_name
        when "devise"
          "devise"
        when "slim"
          "devise_slim"
        when "haml"
          "devise_haml"
        else
          raise "Template not available for #{template_name}. Use: devise, slim, or haml."
        end
      end
    end
  end
end
