class Product < ApplicationRecord
  
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  def supplier_name
    supplier.name
  end

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :quantity, numericality: {greater_than_or_equal_to: 0}
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def is_discounted?
    if price < 5
      true
    else
      false
    end
  end

end
