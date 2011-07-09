class WelcomeController < ApplicationController
  def index
    if user_signed_in? 
      if current_user.has_quit_profile?
        redirect_to "/#{current_user.username}" 
      else
        redirect_to new_quit_profile_path 
      end
    end
  end

end
