class Api::PlantersController < ApplicationController

    def index
        @planters = Planter.all
        render :index
    end

    
    def show
        @planter = Planter.find(params[:id])
        render :show
    end


end
