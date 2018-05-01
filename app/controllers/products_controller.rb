class ProductsController < ApplicationController

  def index
    sleep 0.8
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    render :display
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:notice] = "Product is now updated"
        redirect_to products_path
      else
        render :edit
      end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product is now added to the inventory"
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "The product is removed from the inventory"
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
