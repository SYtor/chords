class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def new
  end

  def create
    if user_params[:password]!=user_params[:password_confirmation]
      redirect_to '/signup?error=1'
      return
    end
  
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end
end
