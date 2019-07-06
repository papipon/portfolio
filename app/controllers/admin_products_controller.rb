class AdminProductsController < ApplicationController

  def show
  end
 
  def index
  end
 
  def new
  	@product = Product.new
  end
 
  def create
  	@product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end
 
  def edit
  end

  private

  def product_params 
  	prams.require(:product).permit(:name, :mobile_img)


end
