class Api::V1::MoodsController < ApplicationController
    
    def index
        @moods = Mood.all
        render json: @moods

    end

    def create
        @mood = Mood.new(mood_params)
        if @mood.save
            render json: @mood
        else
            rendor json: {error: "Error creating mood"}
        end

    end

    def show
        @mood = Mood.find(params[:id])
        render json: @mood
    
    end

    def destroy
        @mood = Mood.find(params[:id])
        @mood.destroy
    end

    def edit
        @mood = Mood.find(params[:id])
    end

    def update
        @mood = Mood.find(params[:id])
        @mood.update(mood_type: params[:mood][:mood_type], date: params[:mood][:date], notes: params[:mood][:notes])
        render json: @mood
    end

    private
    
    def mood_params
        params.require(:mood).permit(:mood_type, :date, :notes, :user_id)
    end

end
