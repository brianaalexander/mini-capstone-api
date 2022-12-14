class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: order.as_json
  end

  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price
    subtotal = params[:quantity].to_i * price
    tax = 0.09 * subtotal
    total = tax + subtotal
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    order.save
    render json: order.as_json
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order.as_json
  end
end
