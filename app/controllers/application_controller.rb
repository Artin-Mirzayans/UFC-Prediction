class ApplicationController < ActionController::Base
    before_action :set_current_user, :getEvents

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path if Current.user.nil?
    end

    def getEvents
        @events = Event.all
    end
end
