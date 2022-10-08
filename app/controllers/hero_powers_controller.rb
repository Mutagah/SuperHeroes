class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid,  with: :invalid_record
    def create
        heropower = HeroPower.create!(heropower_params)
        hero = Hero.find(heropower.hero_id)
        render json: hero,serializer: HeroheroSerializer,status: :created
    end

    private
    
    def heropower_params
       params.permit(:strength, :power_id,:hero_id)
    end

    def invalid_record
        render json: {errors: ["validation errors"]}, status: :unprocessable_entity
    end
end
