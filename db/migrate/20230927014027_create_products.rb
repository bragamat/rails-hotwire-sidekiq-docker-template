# frozen_string_literal: true

# CreateProducts
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name, null: false
      t.integer :stock, null: false, default: 0

      t.references :variant, polymorphic: true

      t.timestamps
    end
  end
end
