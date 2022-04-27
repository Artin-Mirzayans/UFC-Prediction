class ApplicationController < ActionController::Base
    before_action :set_current_user, :getUpcomingEvents, :getPastEvents, :getInProgressEvents

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path if Current.user.nil?
    end

    def getUpcomingEvents
        @upcoming_events = Event.where(status: "Upcoming")
    end

    def getInProgressEvents
        @in_progress_events = Event.where(status: "In Progress")
    end

    def getPastEvents
        @concluded_events = Event.where(status: "Concluded")
    end
end
