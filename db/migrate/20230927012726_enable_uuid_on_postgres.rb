# frozen_string_literal: true

# EnableUuidOnPostgres
class EnableUuidOnPostgres < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto'
  end
end
