class UsersController < ApplicationController

  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
  end

  #login
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone, :username, :password, :bio)
  end

end
