class AddeventController < ApplicationController
    before_action :require_user_logged_in!

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        
        if @event.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def event_params
        params.require(:event).permit(:event_name, :f1, :f2, :f3, :f4)
    end

end