class UsersController < ApplicationController

  def new 

  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      flash[:success] = "User created!!!"
      session[:user_id] = user.id 
      redirect_to '/'
    else
      flash[:danger] = "User not created, Please try again"
      redirect_to '/signup'
    end
  end
  
end
