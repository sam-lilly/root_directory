class Api::CartsController < ApplicationController

    def index
        # debugger
        # @cart = current_user.current_cart
        @cart = current_user.carts.where(completed: false).first
        # debugger
        render :index
    end


    def show
        @cart = Cart.find(params[:id])
        render :show
        # actually dont think even we'll use this AT ALL
    end


    def create

        # creating new cart and checking out current cart
        # debugger
        # current_cart = current_user.carts.where(completed: false)
        # debugger
        # current_cart.checkout_cart

        # Cart.where(id: self.id).update_all("completed = true")
        Cart.where(user_id: current_user.id).where(completed: false).update_all("completed = true")

        # debugger

        @cart = Cart.create!(user_id: current_user.id)
        if @cart.save
            @cart = current_user.carts.where(completed: false).first
            # debugger
            render :index
        else
            render json: @cart.errors.full_messages, status: 422
        end
    end



    def update
        current_cart_to_checkout = current_user.carts.where(completed: false)
        current_cart_to_checkout.checkout_cart
        # Cart.where(id: 10).update_all("completed = true")
    end

    # private

    # def cart_params
    #     params.require(:cart).permit(:completed)
    # end


end
