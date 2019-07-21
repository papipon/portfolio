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
									}.in_groups_of(5)[0]    
  end

  def show
  	@product = Product.find(params[:id])
  	@reviews = @product.reviews.page(params[:page]).per(5)
  end


end


Product.all.sort { |current_product, next_product| 
	if current_product.reviews.first && next_product.reviews.first
		current_product.reviews.average(:star) <=> next_product.reviews.average(:star)
	elsif !current_product.reviews.first
		1
	elsif !next_product.reviews.first
		-1
	else
		0
	end
	}.in_groups_of(5)[0]