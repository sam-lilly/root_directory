class Api::SessionsController < ApplicationController

    def create
        debugger
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if @user
            debugger
            login!(@user)
            render "api/users/show"
        else
            debugger
            render json: ["Invalid username or password"], status: 401
        end

    end


    def destroy
        debugger
        @user = current_user

        if @user
            debugger
            logout!
            debugger
            render "api/users/show"
        else
            debugger
            render json: ["No one is logged in"], status: 404
        end
    
    end

end
