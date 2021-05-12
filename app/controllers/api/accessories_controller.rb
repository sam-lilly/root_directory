class Api::AccessoriesController < ApplicationController

    def index
        @accessories = Accessory.all
        render :index
    end


    def show
        @accessory = Accessory.find(params[:id])
        render :show
    end

    
end
