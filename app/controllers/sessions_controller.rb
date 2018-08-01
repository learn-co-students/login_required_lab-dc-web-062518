require 'pry'
class SessionsController < ApplicationController

  def hello
    if session[:name] == "" || session[:name] == nil
      redirect_to login_path
    end
  end

  def new
  end

  def create
    # binding.pry
    if params[:name] == "" || params[:name] == nil
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def current_user
  end

  def destroy
    if session[:name] == nil
      session[:name]
    else
      session.delete :name
    end
    redirect_to root_path
  end



end
