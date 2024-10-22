class ReviewsController < ApplicationController
  def create
    review = Review.new(review_params)
    if review.save
      redirect_to movie_path(review.movie.tmdb_id)
    else 
      redirect_to movies_path
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating, :movie_id, :user_id)
  end
end
