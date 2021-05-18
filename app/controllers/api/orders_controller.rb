class Api::OrdersController < ApplicationController

    def index
        @orders = Order.where(user_id: current_user.id)
        render :index
    end

    def show
        @order = Order.find(params[:id])
        render :show
    end

    def create
        # need to merge in user_id, cart_id, address_id)
        @order = Order.new(order_params)
        @order.user_id = current_user.id
        @order.cart_id = current_user.cart.id
        # @order.address_id = current_user.
        if @address.save
            render :show
        else
            render json: @address.errors.full_messages, status: 422
        end

    end

    # on checkout will destroy all items in cart and then
    # create Order.new() with all info from cart

    private

    def order_params
        params.require(:order).permit(:order_total, :address_id, :delivery_date, :delivery_type)
        # not sure if i put del date/type or order total here bcz user doesn't input any of these
    end



end
