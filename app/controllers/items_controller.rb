class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)    # Not the final implementation!
    if @item.save
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def index
    @items = Item.all
  end  

  def show
    @item = Item.find(params[:id])
    @order = Order.new
    @order_item = @order.order_items.build
    if params[:quantity].present?
      @n = params[:quantity]
    else
      @n = 1
    end  
    #@order_item.participants.build
    @n.to_i.times {@order_item.participants.build}
    respond_to do |format|
      format.html
      format.js {}
    end
  end
  
  def edit 
    @item = Item.find(params[:id])
  end  
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "Item updated"
      redirect_to @item
    else
      render 'edit'
    end    
  end  
  
  private
  
    def item_params
      params.require(:item).permit(:name, :participants, :max_no_of_participants)
    end  

end
