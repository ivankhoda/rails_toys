class Order < ApplicationRecord
  has_many :product_name
  # accepts_nested_attributes_for :products, allow_destroy: true
end
