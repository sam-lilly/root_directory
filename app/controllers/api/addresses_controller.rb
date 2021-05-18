class Api::AddressesController < ApplicationController

    def index
        # @addresses = Address.all.select { |address| address.user_id == current_user.id }
        @addresses = Address.where(user_id: currentuser.id)
        render :index
    end

    def show
        @address = Address.find(params[:id])
        render :show
    end

    def create
        @address = Address.new(address_params)
        @address.user_id = current_user.id
        if @address.save
            # @addresses = Address.where(user_id: currentuser.id)
            # @addresses = Address.all.select { |address| address.user_id == current_user.id }
            # render :index
            render :show
        else
            render json: @address.errors.full_messages, status: 422
        end
    end

    def update
        @address = Address.find_by(id: params[:id])
        if @address.update(address_params)
            render :show
            # @addresses = Address.all.select { |address| address.user_id == current_user.id }
            # render :index
        else
            render json: @address.errors.full_messages, status: 422
        end
    end

    def destroy
        @address = Address.find(params[:id])
        @address.destroy
        @addresses = Address.where(user_id: currentuser.id)
        # @addresses = Address.all.select { |address| address.user_id == current_user.id }
        render :index
    end



    private

    def address_params
        params.require(:address).permit(:first, :last, :company, :address1, :address2, :city, :state, :country, :zip, :phone)
    end



end
