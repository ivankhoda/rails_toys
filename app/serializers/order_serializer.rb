class OrderSerializer
  include JSONAPI::Serializer
  attributes :order_id, :customer, :products, :total_price
  # has_many :products
end
