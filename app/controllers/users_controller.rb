class UsersController < ApplicationController
  def show
    @user = Book.find(params[:id])
    @books = @user.book
  end

  def edit
  end

end
