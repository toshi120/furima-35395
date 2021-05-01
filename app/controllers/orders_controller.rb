class OrdersController < ApplicationController
before_action :set_item, only: [:index, :create]

  def index
  end

  def create
    @order = Order.new(order_params)
    @address = Address.new(address_params)
    if @order.save && @address.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.permit.merge(user_id: current_user.id, item_id: @item.id)
  end

  def address_params
    params.permit(:post_code, :prefecture_id, :city, :house_number, :phone_number).merge(order_id: @order.id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
