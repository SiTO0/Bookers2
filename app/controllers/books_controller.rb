class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.all
  end

  def edit
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    list = Book.find(params[:id])
    list.destroy
    redirect_to '/books'
  end


end
