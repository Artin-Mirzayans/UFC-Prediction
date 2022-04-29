class CloseeventController < ApplicationController
    before_action :require_user_logged_in!
    def index
    end

    def route
        url = get_close_event_path(params[:event])
        redirect_to url, allow_other_host: true
    end

    def show
        @event = Event.find_by(event_name: params[:event_name])
    end

    def submit
        @result = Result.new(submit_params)
        if @result.save

            @event = Event.find(@result.event_id)
            @predictions = Prediction.where(event_id: @result.event_id)

            @predictionsf1 = @predictions.where(fighter_guess: [@event.f1, @event.f2])
            @predictionsf2 = @predictions.where(fighter_guess: [@event.f3, @event.f4])

            @f1allcorrect = @predictionsf1.where(fighter_guess: @result.f1_fighter_actual).and(@predictionsf1.where(method_guess: @result.f1_method_actual))
            @f1fightercorrect = @predictionsf1.where(fighter_guess: @result.f1_fighter_actual).and(@predictionsf1.where.not(method_guess: @result.f1_method_actual))
            @f1methodcorrect = @predictionsf1.where.not(fighter_guess: @result.f1_fighter_actual).and(@predictionsf1.where(method_guess: @result.f1_method_actual))
            @f1allincorrect = @predictionsf1.where.not(fighter_guess: @result.f1_fighter_actual).and(@predictionsf1.where.not(method_guess: @result.f1_method_actual))

            @f2allcorrect = @predictionsf2.where(fighter_guess: @result.f2_fighter_actual).and(@predictionsf2.where(method_guess: @result.f2_method_actual))
            @f2fightercorrect = @predictionsf2.where(fighter_guess: @result.f2_fighter_actual).and(@predictionsf2.where.not(method_guess: @result.f2_method_actual))
            @f2methodcorrect = @predictionsf2.where.not(fighter_guess: @result.f2_fighter_actual).and(@predictionsf2.where(method_guess: @result.f2_method_actual))
            @f2allincorrect = @predictionsf2.where.not(fighter_guess: @result.f2_fighter_actual).and(@predictionsf2.where.not(method_guess: @result.f2_method_actual))

            @f1allcorrect.each do |prediction|
                prediction.user.increment!(:correct_fg)
                prediction.user.increment!(:correct_mg)
            end

            @f1fightercorrect.each do |prediction|
                prediction.user.increment!(:correct_fg)
                prediction.user.increment!(:incorrect_mg)
            end

            @f1methodcorrect.each do |prediction|
                prediction.user.increment!(:incorrect_fg)
                prediction.user.increment!(:correct_mg)
            end

            @f1allincorrect.each do |prediction|
                prediction.user.increment!(:incorrect_fg)
                prediction.user.increment!(:incorrect_mg)
            end

            @f2allcorrect.each do |prediction|
                prediction.user.increment!(:correct_fg)
                prediction.user.increment!(:correct_mg)
            end

            @f2fightercorrect.each do |prediction|
                prediction.user.increment!(:correct_fg)
                prediction.user.increment!(:incorrect_mg)
            end

            @f2methodcorrect.each do |prediction|
                prediction.user.increment!(:incorrect_fg)
                prediction.user.increment!(:correct_mg)
            end

            @f2allincorrect.each do |prediction|
                prediction.user.increment!(:incorrect_fg)
                prediction.user.increment!(:incorrect_mg)
            end

        end
    end

    def submit_params
        params.require(:result).permit(:event_id, :f1_fighter_actual, :f1_method_actual, :f2_fighter_actual, :f2_method_actual)
    end

end