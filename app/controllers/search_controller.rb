class SearchController < ApplicationController
    def show
        @email = params[:query] + "@gmail.com"
        @user = User.find_by(email: @email)

        if @user

            @fg_correct = @user.correct_fg
            @mg_correct = @user.correct_mg
            @fg_incorrect = @user.incorrect_fg
            @mg_incorrect = @user.incorrect_mg


            @total_fg = @fg_correct + @fg_incorrect
            @total_mg = @mg_correct + @mg_incorrect
            @total = @total_fg +  @total_mg
            @totalcorrect = @fg_correct + @mg_correct
            @totalpercentage = ((@totalcorrect).fdiv(@total)*100).round(2)
        
        else
            redirect_to root_path
        end
    end
end