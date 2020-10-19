class Api::V1::UsersController < ApplicationController

    def index
        
    end

    def create
    end

    def show
    end

    def destroy
    end

    def edit
    end

    def update
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :password)
    end

end
