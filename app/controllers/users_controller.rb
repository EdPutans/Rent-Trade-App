class UsersController < ApplicationController

    # before_action :locate_user, only: [:edit, :update, :show]

    def index
      if current_user

        redirect_to listings_path
      else
     render :layout => "carousel.html.erb"
      end
    end

    def new
      @user=User.new
    end

  def show
    # @user = User.find(params[:id])
    #we do not why but works
     # session.clear
     # redirect_to root_path
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def create
    @user=User.new(user_params)
    if @user.valid?
      redirect_to user_path
     else
       flash[:errors]=@user.errors.full_messages
       redirect_to new_user_path
    end

  end

  def delete
    session.clear
    redirect_to root_path
  end



  #login
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone, :username, :password, :bio)
  end

end
