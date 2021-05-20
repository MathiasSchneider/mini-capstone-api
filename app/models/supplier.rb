class Supplier < ApplicationRecord

  has_many :products

  def all_products
    products.all
  end


end