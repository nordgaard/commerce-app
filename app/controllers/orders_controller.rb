class OrdersController < ApplicationController

  def create
    @new_order = Order.new(quantity: params[:quantity], product_id: params[:product_id], user_id: current_user.id)
    @new_order.save
    redirect_to "/orders/#{@new_order.id}"
  end

  def show
    @new_order = Order.find_by(id: params[:id])
  end

end
