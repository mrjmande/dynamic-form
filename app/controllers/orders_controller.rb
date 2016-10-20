class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)    # Not the final implementation!
    if @order.save
      redirect_to orders_url
    else
      render 'new'
    end    
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])    
  end

  def destroy
  end
  
  private
    def order_params
      params.require(:order).permit(order_items_attributes: [:item_id, :quantity, participants_attributes: [:name]])
    end
end
