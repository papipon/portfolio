class Admins::AdminReviewsController < ApplicationController
before_action :authenticate_admins_admin_user!
 def edit
 	@review = Review.find(params[:id])
 end

 def update
 	review = Review.find(params[:id])
    review.update(review_params)
    redirect_to tops_index
 end
 	
 def destroy
 	review = Review.find(params[:id])
    review.destroy
    redirect_to admins_admin_products_path
 end

 private
  def review_params
    params.require(:review).permit(:name,:title, :body)
  end

 	
end
