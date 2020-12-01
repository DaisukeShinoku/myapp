class BooksController < ApplicationController
  before_action :logged_in_user
  
  def index
    @books = Book.all 
  end

  def show
    @book = Book.find(params[:id])
  end
end
