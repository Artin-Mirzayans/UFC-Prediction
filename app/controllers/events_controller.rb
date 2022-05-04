class EventsController < ApplicationController
    before_action :set_current_user, :require_user_logged_in!

    def index
        @events = @upcoming_events
        @fg_correct = Current.user.correct_fg
        @mg_correct = Current.user.correct_mg
        @fg_incorrect = Current.user.incorrect_fg
        @mg_incorrect = Current.user.incorrect_mg


        @total_fg = @fg_correct + @fg_incorrect
        @total_mg = @mg_correct + @mg_incorrect
        @total = @total_fg +  @total_mg
        @totalcorrect = @fg_correct + @mg_correct
        @totalpercentage = (@fg_correct + @mg_correct).fdiv(@total)*100

    end

    def show
        # require 'pry'
        # binding.pry

        
        @prediction = Prediction.new
        @event = Event.find_by(event_name: params[:event_name])

        if @event

            @event_status = @event.status
            @predictions = Prediction.where(user_id: Current.user.id, event_id: @event.id)
            @prediction_names_list = @predictions.map { |p| p.fighter_guess }

            @prediction1 = @predictions.find_by(fighter_guess: [@event.f1, @event.f2])
            @prediction2 = @predictions.find_by(fighter_guess: [@event.f3, @event.f4])

            @results = Result.find_by(event_id: @event.id)
        
        else
            redirect_to root_path

        end
    end

    def route
        if (params[:event].present?)
        url = get_event_path(params[:event])
        redirect_to url, allow_other_host: true
        end
    end

    def predict
        @prediction = Prediction.new(predict_params)
        if @prediction.save
            url = get_event_path(params[:event_name])
            redirect_to url, allow_other_host: true

        else
            @event = Event.find_by(event_name: params[:event_name])
            @event_status = @event.status
            @predictions = Prediction.where(user_id: Current.user.id, event_id: @event.id)
            @prediction_names_list = @predictions.map { |p| p.fighter_guess }
    
            @prediction1 = @predictions.find_by(fighter_guess: [@event.f1, @event.f2])
            @prediction2 = @predictions.find_by(fighter_guess: [@event.f3, @event.f4])
            render :show
        end

    end

    def update_prediction
        @prediction = Prediction.find(params[:prediction][:id])
        
        if @prediction.update(update_predict_params)
            @event = Event.find_by(id: @prediction.event_id)
            url = get_event_path(@event.event_name)
            redirect_to url, allow_other_host: true

        else
            @event = Event.find_by(event_name: params[:event_name])
            @event_status = @event.status
            @predictions = Prediction.where(user_id: Current.user.id, event_id: @event.id)
            @prediction_names_list = @predictions.map { |p| p.fighter_guess }
    
            @prediction1 = @predictions.find_by(fighter_guess: [@event.f1, @event.f2])
            @prediction2 = @predictions.find_by(fighter_guess: [@event.f3, @event.f4])
            render :show
        end
    end

    def update_status
        @event = Event.find_by(event_name: params[:event_name])
    
        if Current.user.admin && @event.update(update_status_params)
            url = get_event_path(@event.event_name)
            redirect_to url, allow_other_host: true
        else
            redirect_to root_path
        end

    end

    private

    def predict_params
        params.require(:prediction).permit(:user_id, :event_id, :fighter_guess, :method_guess)
    end

    def update_predict_params
        params.require(:prediction).permit(:fighter_guess, :method_guess)
    end

    def update_status_params
        params.require(:event).permit(:status)
    end
    

end