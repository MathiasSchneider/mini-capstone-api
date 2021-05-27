class OrderSerializer < ActiveModel::Serializer
  has_many :carted_products

  attributes :id, :user_id, :subtotal, :tax, :total
end
