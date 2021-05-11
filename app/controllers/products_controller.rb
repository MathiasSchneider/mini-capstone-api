class ProductsController < ApplicationController
  def index
    render json: {message: Product.all}
  end
  
def create
  product = Product.new(
    name: params[:name],
    price: params[:price],
    image_url: params[:image_url],
    description: params[:description]
  )
  product.save
  render json: {message: product}
end

def show
  product = Product.find(params[:id])
  render json: {message: product}  
end

def update
  product = Product.find(params[:id])
  product.name = params[:name] || product.name
  product.price = params[:price] || product.price
  product.image_url = params[:image_url] || product.image_url
  product.description = params[:description] || product.description
  product.save
  render json: {message: product}
end

def destroy
  product = Product.find(params[:id])
  product.destroy
  render json: {message: "#{product.name} was successfully destroyed."}
end

#   #query and segment both use this:
#   def single_param
#     id_number = params[:single_product]
#     product = Product.find_by(id: id_number)
#     render json: {message: product}
#   end
# end
