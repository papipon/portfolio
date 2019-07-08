class AdminImgController < ApplicationController
  def new
  	@img = Img.new
  end

  def index
  	@img = Img.new
  end

  def create
  	@img = Img.new(product_img_params)
  	@img.product_id = params[:admin_product_id]
  	binding.pry
  	@img.save
  	redirect_to admin_product_path(@img.product_id)
  end

  def update
  end

  private
  def product_img_params 
  	params.require(:img).permit(:image,:image_colour)
  end
end
