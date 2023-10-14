# frozen_string_literal: true

# Product
class Product < ApplicationRecord
  has_many :variants, as: :variant, class_name: 'Product', dependent: :destroy

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
