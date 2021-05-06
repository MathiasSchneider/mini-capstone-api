class ProductsController < ApplicationController
  def all_product_method
    render json: {message: Product.all}
  end
  def keith_product_method
    product = Product.find_by(name: "Keith Krunch")
    render json: {message: product}
  end
  def ross_product_method
    product = Product.find_by(name: "Grandpa Rossy Crunch")
    render json: {message: product}
  end
  def rizzo_product_method
    product = Product.find_by(name: "Rizzos")
    render json: {message: product}
  end
  def zobrist_product_method
    product = Product.find_by(name: "Zorilla Crunch")
    render json: {message: product}
  end
end
