class EventsController < ApplicationController
    before_action :set_current_user

    def index
        @events = Event.all
    end

    def show
        # require 'pry'
        # binding.pry
        
        
        @event = Event.find_by(event_name: params[:event_name])
        @predictions = Prediction.where(user_id: Current.user.id, event_id: @event.id)
        @prediction_names_list = @predictions.map { |p| p.fighter_guess }

        @prediction1 = @predictions.find_by(fighter_guess: [@event.f1, @event.f2])
        @prediction2 = @predictions.find_by(fighter_guess: [@event.f3, @event.f4])

    end

    def route
        url = get_event_path(params[:event])
        redirect_to url, allow_other_host: true
    end

    def predict
        
        @predict = Prediction.new(predict_params)
        @predict.save

    end

    def update_prediction
        @prediction = Prediction.find(params[:prediction][:hoopla])
        
        if @prediction.update(update_params)
            @event = Event.find_by(id: @prediction.event_id)
            url = get_event_path(@event.event_name)
            redirect_to url, allow_other_host: true
        end
    end

    private

    def predict_params
        params.require(:prediction).permit(:user_id, :event_id, :fighter_guess, :method_guess)
    end

    def update_params
        params.require(:prediction).permit(:fighter_guess, :method_guess)
    end

    

end