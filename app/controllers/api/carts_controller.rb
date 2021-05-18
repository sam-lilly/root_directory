class Api::CartsController < ApplicationController

    def show
        @cart = Cart.find(params[:id])
        render :show
    end

    def create
        @cart = Cart.new(user_id: current_user.id, completed: false)
        if @cart.save
            render :show
        else
            render json: @cart.errors.full_messages, status: 422
        end
    end


end
