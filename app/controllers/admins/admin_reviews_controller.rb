class Admins::AdminReviewsController < ApplicationController

 def edit
 	@review = Review.find(pamams[:id])
 end

 def update
 	review = Review.find(params[:id])
    review.update(review_params)
    redirect_to tops_index
 end
 	
 def destroy
 	review = Review.find(params[:id])
    review.destroy
    redirect_to tops_index
 end

 private
  def review_params
    params.require(:review).permit(:name,:title, :body)
  end

 	
end
