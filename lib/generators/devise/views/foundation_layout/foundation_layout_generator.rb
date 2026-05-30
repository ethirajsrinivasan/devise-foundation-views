# frozen_string_literal: true

module Devise
  module Views
    class FoundationLayoutGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      desc "Copy a centered Devise-only layout and hook it up in ApplicationController"

      def copy_layout
        template "layouts/devise.html.erb", "app/views/layouts/devise.html.erb"
      end

      def show_application_controller_note
        say "\nAdd to ApplicationController:\n", :yellow
        say <<~RUBY, :green
          layout :layout_for_controller

          private

          def layout_for_controller
            devise_controller? ? "devise" : "application"
          end
        RUBY
        say "\nIn application.css (Sprockets, no Sass required):\n", :yellow
        say <<~CSS, :green
          *= require devise_foundation_views
          *= require devise_foundation_layout
        CSS
        say "\nEnsure Foundation 6 CSS is loaded in the devise layout.\n", :yellow
      end
    end
  end
end
