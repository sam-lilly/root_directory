class Api::CartItemsController < ApplicationController

    def index
        current_cart = Cart.select{ |cart| cart.user_id == current_user.id && !cart.completed }
        @cart_items = current_cart.items

        # self.carts.where(completed: false)
        # move this to models to cart

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
        
        # need to merge in current user ID once it works
        # as well as shopping cart_id 
        # only get product Id and quantity from the backend

        # @cart_item = CartItem.create!(cart_item_params)
        debugger
        # current_cart = Cart.select{ |cart| cart.user_id == current_user.id && !cart.completed }
        # cart_to_add_to = current_user.carts.where(completed: false).first
        # @cart_item.cart_id = cart_to_add_to.id
        debugger
        if @cart_item.save!
            debugger
            # @cart_items = 
            
            cart_id = current_user.carts.where(completed: false).first.id
            @cart_items = CartItem.where(cart_id: cart_id)
            debugger
            # @cart_items = current_user.current_cart.items
            render :index
        else
            debugger
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
        debugger
        params.require(:cartItem).permit(:cart_id, :product_id, :quantity)
    end


    # add another user
    # keep cart open when not user
    # bonus


    # session state/
    # have product id state saved and then store product id on clock
    # to add product upon create new user / login


end
