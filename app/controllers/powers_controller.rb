class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :unfound_response 
    def show
        power = Power.find(params[:id])
        render json: power,status: :ok
    end

    private

    def unfound_response
        render json: {error: "Power not found"}
    end
end
