class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def logged_in?
        if session[:user_id]
          true
        else
          false
        end
      end

    def require_login
        # unless logged_in?
        #   flash[:danger] = "You must be logged in to view this page"
        #   redirect_to login_path
        # end
      end
    
end
