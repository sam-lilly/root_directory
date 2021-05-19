class Api::CartItemsController < ApplicationController

    def index
        current_cart = Cart.select{ |cart| cart.user_id == current_user.id && !cart.completed }
        @cart_items = current_cart.items

        # self.carts.where(completed: false)
        # move this to models to call
        # current_user.current_cart

        # OR

        # @cart_items = CartItem.where(cart_id: current_cart)

        # finding the cart of the current user that is not completed
        


        # @cart_items = CartItem.where(cart_id: current_user.cart.id)
        # where completed == false
        # need to change this for create/ update/ destroy as well
        render :index
    end

    def create
        @cart_item = CartItem.new(cart_item_params)
        current_cart = Cart.select{ |cart| cart.user_id == current_user.id && !cart.completed }
        @cart_item.cart_id = current_cart.id
        if @cart_item.save!
            @cart_items = CartItem.where(cart_id: current_cart)
            # @cart_items = current_user.current_cart.items
            render :index
        else
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
''

    private

    def cart_item_params
        params.require(:cart_item).permit(:product_id, :quantity)
    end


    # add another user
    # keep cart open when not user
    # bonus


    # session state/
    # have product id state saved and then store product id on clock
    # to add product upon create new user / login


end
