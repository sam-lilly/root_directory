class Api::CartItemsController < ApplicationController

    def index
        cart_right_now = current_user.carts.where(completed: false).first
        @cart_items = cart_right_now.items
        render :index
    end

    def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.cart_id = current_user.carts.where(completed: false).first.id
        # debugger
        if @cart_item.save!           
            # debugger 
            cart_id = @cart_item.cart_id
            @cart_items = CartItem.where(cart_id: cart_id)
            render :index
        else
            # debugger
            render json: @cart_item.errors.full_messages, status: 422
        end
    end

    def update
        @cart_item = CartItem.find(params[:id])
        if @cart_item.update(cart_item_params)
            current_cart = Cart.select{ |cart| cart.user_id == current_user.id && !cart.completed }
            @cart_item.cart_id = current_cart.id
            render :index
        else
            render json: @cart_item.errors.full_messages, status: 422
        end
    end

    def destroy
        @cart_item = CartItem.find(params[:id])
        @cart_item.destroy
        current_cart = Cart.select{ |cart| cart.user_id == current_user.id && !cart.completed }
        @cart_item.cart_id = current_cart.id
        render :index
    end


    private

    def cart_item_params
        # debugger
        params.require(:cartItem).permit(:cart_id, :product_id, :quantity)
    end


    # add another user
    # keep cart open when not user
    # bonus


    # session state/
    # have product id state saved and then store product id on clock
    # to add product upon create new user / login


end
