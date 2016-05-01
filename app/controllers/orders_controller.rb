class OrdersController < ApplicationController

  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    subtotal = product.price * quantity
    total_tax = product.tax * quantity
    total = total_tax + subtotal

    new_order = Order.new(quantity: params[:quantity], product_id: params[:product_id], user_id: current_user.id, tax: total_tax, subtotal: subtotal, total: total)
    new_order.save
    redirect_to "/orders/#{new_order.id}"
  end

  def show
    @new_order = current_user.orders.find_by(id: params[:id])
  end

end
