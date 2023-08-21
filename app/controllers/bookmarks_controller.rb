class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save

    redirect_to list_path(@list)

    # @review = Review.new(review_params)
    # @review.restaurant = @restaurant
    # @review.save
    # redirect_to restaurant_path(@restaurant)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
