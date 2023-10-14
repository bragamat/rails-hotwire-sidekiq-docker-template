# frozen_string_literal: true

Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
  g.test_framework :rspec, fixture: true
  g.fixture_replacement :factory_bot, dir: 'spec/support/factories'
end
