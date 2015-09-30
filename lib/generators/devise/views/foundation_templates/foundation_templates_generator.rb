module Devise
  module Views
    class FoundationTemplatesGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../../app/views', __FILE__)
      argument :template_name, :type => :string, :default => "devise"
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
      		raise "Template not available for #{template_name}"
      	end
      end		
		end
  end
end
