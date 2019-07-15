class ProductsController < ApplicationController
  before_action :search
  
  def index
  	@q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).page(params[:page])
  end

  def show
  	@product = Product.find(params[:id])
  end
end
