class Api::PlantsController < ApplicationController

    def index
        @plants = Plant.all
        render :index
    end


    def show
        @plant = Plant.find(params[:id])
        render :show
    end


end
