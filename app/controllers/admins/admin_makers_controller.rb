class Admins::AdminMakersController < ApplicationController
  before_action :authenticate_user!
  def new
  	@maker = Maker.new
  end

  def create
  	@maker = Maker.new(maker_params)
  	@maker.save
  	redirect_to admins_admin_products_path
  end

  private
  def maker_params 
  	params.require(:maker).permit(:name)
  end


end
