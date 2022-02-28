class ClientsController < ApplicationController


    def show
        show_client = find_client
        render json: show_client, status: :ok
    end

    private

    def find_client
        Client.find(params[:id])
    end
end
