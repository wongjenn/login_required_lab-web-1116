class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to login_path and return
    end
  end
end
