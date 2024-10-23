class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      respond_to do |format|
        format.html { redirect_to movie_path(@review.movie.tmdb_id) }
        format.turbo_stream
      end
    else 
      redirect_to movies_path
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to movie_path(@review.movie.tmdb_id) }
      format.turbo_stream
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating, :movie_id, :user_id)
  end
end
