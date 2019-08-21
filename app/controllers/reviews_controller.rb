class ReviewsController < ApplicationController
  def new
    @resto = Restaurant.find(params[:restaurant_id])
  end

  def create
    @resto = Restaurant.find(params[:restaurant_id])
    content = params[:review][:content]
    rating = params[:review][:rating]
    new_review = Review.new(content: content, rating: rating, restaurant: @resto)
    new_review.save
  end
end
