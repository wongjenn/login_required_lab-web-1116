class SessionsController < ApplicationController

  def create
    session[:name] = params[:name]
    if session[:name].blank?
      redirect_to "/login"
    else
      redirect_to
    end
  end

  def destroy
    if session[:name].blank?
      redirect_to "/login"
    else
      session[:name] = nil
      redirect_to '/login'
    end
  end
end
