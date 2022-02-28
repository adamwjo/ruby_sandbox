class GymsController < ApplicationController

    def show
        show_gym = find_gym
        render json: show_gym, status: :ok
    end

    def destroy
        del_gym = find_gym
        del_gym.destroy
        render json: {}, status: :no_content
    end

    private

    def find_gym
        Gym.find(params[:id])
    end
end
