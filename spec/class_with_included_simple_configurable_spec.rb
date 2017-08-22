require 'spec_helper'

describe 'DummyTestClass that include SimpleConfigurable' do
  subject {
    class DummyTestClass
      include SimpleConfigurable.with :enabled, :email
    end

    DummyTestClass.configure do |config|
      config.enabled = true
      config.email = 'test@example.com'
    end

    DummyTestClass
  }

  it "returns true for config.enabled" do
    expect(subject.config.enabled).to eq true
  end

  it "returns 'test@example.com' for config.email" do
    expect(subject.config.email).to eq 'test@example.com'
  end
end