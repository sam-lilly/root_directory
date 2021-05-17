class Api::AddressesController < ApplicationController

    def index
        @addresses = Address.all
        render :index
    end

    def show
        @address = Address.find(params[:id])
        render :show
    end

    def create
        @address = Address.new(address_params)
        if @address.save
            render :show
        else
            render json: @address.errors.full_messages, status: 422
        end
    end

    def update
        @address = Address.find_by(id: params[:id])
        if @address.update(address_params)
            render :show
        else
            render json: @address.errors.full_messages, status: 422
        end
    end

    def destroy
        @address = Address.find(params[:id])
        @address.destroy
        render :index
    end



    private

    def address_params
        params.require(:address).permit(:first_name, :last_name, :company, :address_1, :address_2, :city, :state, :country, :zip_code, :phone_number)
    end



end
