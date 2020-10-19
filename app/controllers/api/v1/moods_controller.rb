class Api::V1::MoodsController < ApplicationController
    
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
    
    def mood_params
        params.require(:mood).permit(:mood_type, :date, :notes, :user_id)
    end

end
