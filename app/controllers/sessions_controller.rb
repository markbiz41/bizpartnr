class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:login][:email])

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully logged in'
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
