class Admins::AdminImgController < ApplicationController
before_action :authenticate_admin_user!
  def new
  	@img = Img.new
  end

  def index
  	@img = Img.new
  end

  def create
  	@img = Img.new(product_img_params)
  	@img.product_id = params[:admin_product_id]
  	@img.save
  	redirect_to admins_admin_product_path(@img.product_id)
  end

  def update
  end

  private
  def product_img_params 
  	params.require(:img).permit(:image,:image_colour,:admin_product_id)
  end
end
