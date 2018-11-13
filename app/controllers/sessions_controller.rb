class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    byebug
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid."
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
