class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :inventory, numericality: {greater_than_or_equal_to: 0}

  
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
