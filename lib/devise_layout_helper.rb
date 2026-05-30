# frozen_string_literal: true

module DeviseLayoutHelper
  def devise_page_title
    return content_for(:title) if content_for?(:title)

    case [controller_name, action_name]
    when %w[sessions new] then "Sign in"
    when %w[registrations new] then "Sign up"
    when %w[registrations edit] then "Edit account"
    when %w[passwords new] then "Forgot password"
    when %w[passwords edit] then "Change password"
    when %w[confirmations new] then "Resend confirmation"
    when %w[unlocks new] then "Resend unlock"
    else "Account"
    end
  end
end
