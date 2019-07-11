class Admins::AdminProductsController < ApplicationController

  def show
  	@product = Product.find(params[:id])
  end
 
  def index
  	
  end
 
  def new
  	@product = Product.new
    "成功"
  end
 
  def create
  	@product = Product.new(product_params)
    @product.save
    redirect_to admin_products_path
  end
 
  def edit
  end

  

  private

  def product_params 
  	params.require(:product).permit(:product_name,:size,:battery,:speed,:camera_out,:camera_in,:waterproof,:onesegment,:felica,:authentication,:display,:ram,:rom,:maker)
  end

end
