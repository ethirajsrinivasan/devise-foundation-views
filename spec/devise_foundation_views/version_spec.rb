# frozen_string_literal: true

RSpec.describe DeviseFoundationViews do
  it "has a version number" do
    expect(DeviseFoundationViews::VERSION).not_to be_nil
  end

  it "defines a Rails engine" do
    expect(DeviseFoundationViews::Engine).to be < Rails::Engine
  end

  it "defines a Railtie" do
    expect(DeviseFoundationViews::Railtie).to be < Rails::Railtie
  end
end
