# frozen_string_literal: true

RSpec.describe "Devise Foundation views" do
  let(:views_root) { File.expand_path("../../app/views", __dir__) }

  %w[
    devise/shared/_error_messages.html.erb
    devise/shared/_foundation_layout.html.erb
    devise/sessions/new.html.erb
    devise/registrations/edit.html.erb
    devise_haml/sessions/new.html.haml
    devise_slim/sessions/new.html.slim
  ].each do |path|
    it "includes #{path}" do
      expect(File).to exist(File.join(views_root, path))
    end
  end
end
