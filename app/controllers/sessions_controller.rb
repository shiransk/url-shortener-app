class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:success] = "You are now conected"
      redirect_to '/'
    else
      flash[:danger] = "Wrong input, Please try again"
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:danger] = "You are loged off"
    redirect_to '/login'
  end


end
