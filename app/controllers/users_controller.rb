class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @opportunities = @user.opportunities
    @owner = (current_user == @user)
  end

  def new
    @user = User.new
  end

  def edit

  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Your profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end

  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'User is registered'
    else
      render 'new'
    end

  end


  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar, :city, :industry, :position, :contact_info, :full_name)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
