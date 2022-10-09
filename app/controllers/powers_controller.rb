class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :unfound_response 
rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

    def index
        render json: Power.all,status: :ok
    end

    def show
        power = Power.find(params[:id])
        render json: power,status: :ok
    end

    def update
        power = Power.find_by(id: params[:id])
        power.update!(power_params)
        render json: power,status: :accepted
    end
    
    private

    def unfound_response
        render json: {error: "Power not found"},status: :not_found
    end

    def invalid_record
        render json:{errors: ["validation errors"]},status: :unprocessable_entity
    end
    def power_params
        params.permit(:description)
    end
end
