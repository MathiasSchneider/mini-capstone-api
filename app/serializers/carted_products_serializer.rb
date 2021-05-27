class CartedProductsSerializer < ActiveModel::Serializer
  belongs_to :product

  attributes :id, :user_id, :order_id, :quantity, :status
end
