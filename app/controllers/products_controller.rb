class ProductsController < ApplicationController

  def show
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create product_params
    redirect_to product_url(@product)
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    @product.update(product_params)
    redirect_to product_url(@product)
  end

  def destroy
    @product = Product.find params[:id]
    if @product.delete
      flash[:notice] = "product deleted"
      redirect_to :store_index_url
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, { sizes: [] }, :price, { colors: [] })
  end
end
