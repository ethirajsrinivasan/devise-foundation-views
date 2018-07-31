# -*- encoding : utf-8 -*-

module DeviseFoundationViewsHelper
  def foundation_devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t('errors.messages.not_saved',
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div data-closable class="alert callout">
      <h5>#{sentence}</h5>
      <ul>#{messages}</ul>
      <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    HTML

    html.html_safe
  end
end
