class BooksController < ApplicationController
  before_action :logged_in_user
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def import
    Book.import(params[:file])
    redirect_to books_url, notice: I18n.t('label.csv_import')
  end
end
