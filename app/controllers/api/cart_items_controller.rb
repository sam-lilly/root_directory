class Api::CartItemsController < ApplicationController

    def index
        cart_right_now = current_user.carts.where(completed: false).first
        @cart_items = cart_right_now.items
        render :index
    end

    def show
        @cart_items = CartItem.find(params[:id])
        render :show
    end

    def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.cart_id = current_user.carts.where(completed: false).first.id
        # debugger
        if @cart_item.save!           
            # debugger 
            cart_id = @cart_item.cart_id
            # debugger
            @cart_items = CartItem.where(cart_id: cart_id)
            render :index
        else
            # debugger
            render json: @cart_item.errors.full_messages, status: 422
        end
    end

    def update
        # debugger
        # @cart_item = CartItem.find(params[:id])

        @cart_item = CartItem.find(params[:cartItem][:cart_item_id])
        # debugger
        if @cart_item.update(quantity: params[:cartItem][:quantity])
            # debugger
            current_cart_id = current_user.carts.where(completed: false).first.id
            @cart_items = CartItem.where(cart_id: current_cart_id)
            # debugger
            render :index
        else
            render json: @cart_item.errors.full_messages, status: 422
        end
    end

    def destroy
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
        current_cart_id = current_user.carts.where(completed: false).first.id
        @cart_items = CartItem.where(cart_id: current_cart_id)
        debugger
        render :index
    end


    private

    def cart_item_params
        debugger
        params.require(:cartItem).permit(:cart_id, :product_id, :quantity, :cart_item_id)
        # params.require(:cartItem).permit(:id, :cart_id, :product_id, :quantity)
    end


    # add another user
    # keep cart open when not user
    # bonus


    # session state/
    # have product id state saved and then store product id on clock
    # to add product upon create new user / login


end
