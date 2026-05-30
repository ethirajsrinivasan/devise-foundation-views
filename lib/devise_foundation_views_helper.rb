# frozen_string_literal: true

module DeviseFoundationViewsHelper
  # Deprecated: use <%= render "devise/shared/error_messages", resource: resource %> in views.
  def foundation_devise_error_messages!
    render_to_string(partial: "devise/shared/error_messages", locals: { resource: resource })
  end
end
