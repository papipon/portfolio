class ProductsController < ApplicationController


  def index
  	@q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).page(params[:page])
    @all_ranks = Product.all.sort { |current_product, next_product| 
									if current_product.reviews.first && next_product.reviews.first
										next_product.reviews.average(:star) <=> current_product.reviews.average(:star)
									elsif !next_product.reviews.first
										-1
									elsif !current_product.reviews.first
										1
									else
										0
									end
									}.in_groups_of(4)[0]
	@rank = 1

	@all_ranks.each do |a| 
		p "========="
		p a
		p "========="
	end
  end

  def show
  	@product = Product.find(params[:id])
  	@reviews = @product.reviews.page(params[:page]).per(5)
  end


end