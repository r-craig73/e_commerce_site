class OrderItemsController < ApplicationController

  def create
      @order = current_order
      @item = @order.order_items.new(item_params)
      @order.save
      session[:order_id] = @order.id
      flash[:notice] = "Order is added to the shopping cart"
      redirect_to products_path
    end

    private

    def item_params
      params.require(:order_item).permit(:quantity, :product_id)
    end


end
