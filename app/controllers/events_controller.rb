class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def show
        require 'pry'
        # binding.pry
        
        @event = Event.find_by(event_name: params[:event_name])
    end

    def route
        url = 'http://localhost:3000/events/' + params[:event]
        redirect_to url, allow_other_host: true
    end

end