class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def create
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorite.new(book_id: params[:book_id])
    @favorite.save
  end

  def destroy
    @book = Book.find(params[:book_id])
    @favorite = Favorite.find_by(book_id: params[:book_id])
    @favorite.destroy
  end
end
