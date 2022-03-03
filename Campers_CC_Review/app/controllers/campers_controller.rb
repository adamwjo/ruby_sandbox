class CampersController < ApplicationController

    def index
        render json: Camper.all
    end

    def show
        render json: find_camper, serializer: CamperdetailserializerSerializer
    end

    def create
        new_camper = Camper.create!(camper_params)
        render json: new_camper, status: :created
    end

    private

    def find_camper
        camper = Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
