class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      username = current_user.username
      redirect_to "/#{username}"
    end
  end

end
