class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].blank?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
