class Admins::AdminProductsController < ApplicationController

  def show
  	@product = Product.find(params[:id])
    @reviews = @product.reviews.page(params[:page]).per(5)
    # @review = @product.review
  end
 
  def index
  	@products = Product.page(params[:page])
  end
 
  def new
  	@product = Product.new
  end
 
  def create
  	@product = Product.new(product_params)
    @product.save
    redirect_to admins_admin_products_path
  end
 
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to admins_admin_products_path
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:notice] = "Product was successfully destroyed."
    redirect_to admins_admin_products_path
  end

  

  private

  def product_params 
  	params.require(:product).permit(:product_name,:size,:battery,:speed,:camera_out,:camera_in,:waterproof,:onesegment,:felica,:authentication,:display,:ram,:rom,:maker,:colour)
  end

end
