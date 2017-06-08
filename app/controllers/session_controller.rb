class SessionController < ApplicationController
  def new
  end

  def create
    my_user = params[:user]
    user = User.find_by_email(my_user[:email])
    if user && user.authenticate(my_user[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
