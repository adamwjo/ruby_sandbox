class MembershipsController < ApplicationController

    def create
        new_membership = Membership.create!(membership_params)
        render json: new_membership, status: :created
    end

    def index
        render json: Membership.all
    end

    private

    def membership_params
        params.permit(:client_id, :gym_id, :charge)
    end
end
