class OrdersController < ApplicationController
  def index
    order = current_user.orders
    render json: order
  end
  
  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    order.subtotal = order.quantity * order.product.price
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax
    if order.save == true
      render json: order
    else
      render json: order.errors.full_messages
    end
  end

  def show
    order = Order.find(params[:id])
    render json: order
  end
end
