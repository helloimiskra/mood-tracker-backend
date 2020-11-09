class Api::V1::MoodsController < ApplicationController
    
    before_action :set_user

    def index
        @moods = @user.moods
        render json: MoodSerializer.new(@moods)

    end

    def create
        @mood = Mood.new(mood_params)
        if @mood.save
            render json: MoodSerializer.new(@mood)
        else
            rendor json: {error: "Error creating mood"}
        end

    end

    def show
        @mood = Mood.find(params[:id])
        render json: MoodSerializer.new(@mood)
    
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
        render json: MoodSerializer.new(@mood)
    end

    private

    def set_user
        @user = User.find(params[:user_id])
    end
    
    def mood_params
        params.require(:mood).permit(:mood_type, :date, :notes, :user_id)
    end

end
