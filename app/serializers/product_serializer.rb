class ProductSerializer
  include JSONAPI::Serializer
  attributes :product_name, :price, :comment
end
