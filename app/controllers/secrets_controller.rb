class SecretsController < ApplicationController
  before_action :check_login
  skip_before_action :check_login, only: [:show]


  def show
    if session[:name] == "" || session[:name] == nil
      redirect_to login_path
    else
    end
  end


  private

  def check_login
    return head(:forbiden) unless session.include? :name
  end


end
