class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.authenticate(params[:email], params[:password])

    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Email or password doesn't match"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)

    redirect_to root_path, notice: 'Logged out'
  end
end
