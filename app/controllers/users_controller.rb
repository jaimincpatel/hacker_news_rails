class UsersController < ApplicationController

  def index
    @users = User.all

  end

  def create
    @user = User.new(username: params[:user][:username], password: params[:user][:password])
    puts "++++++++++++++"
    puts params[:user]
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => 'Welcome!'
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
