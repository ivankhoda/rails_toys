class OrderSerializer
  include JSONAPI::Serializer
  attributes :order_id, :customer, :total_price, :products, :created_at
end
