class ApplicationController < ActionController::Base
  skip_forgery_protection

  helper_method :current_user

    def current_user
      if session.key?("user_id")
      @current_user ||= User.find_by({ :id => session.fetch("user_id") }) 
    end 
  end 
end
