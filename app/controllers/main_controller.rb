class MainController < ApplicationController
    def index
        flash.now[:notice] ="Woohoo"
        flash.now[:alert] ="aww"
    end
end