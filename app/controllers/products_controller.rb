class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Skill.find(params[:id])
      if @product.update(product_params)
        flash[:notice] = "Product is now updated"
        redirect_to products_path
      else
        render :edit
      end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "The product is removed from the inventory"
    redirect_to products_path
  end

end
