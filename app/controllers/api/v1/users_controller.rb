class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: "Error creating user"}
        end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(username: params[:user][:username], password: params[:user][:password])
        render json: @user
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :password)
    end

end
