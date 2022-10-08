class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
rescue_from ActiveRecord::RecordNotFound, with: :invalid_record
    def create
        heropower = HeroPower.new(heropower_params)
        hero = Hero.find(heropower.hero_id)
        power = Power.find(heropower.power_id)
        if hero && power
            heropower.save
            render json: hero,serializer: HeroheroSerializer,status: :created
        else
            invalid_record
        end
    end

    private
    
    def heropower_params
       params.permit(:strength, :power_id,:hero_id)
    end

    def invalid_record
        render json: {errors: ["validation errors"]}, status: :unprocessable_entity
    end

    # def unfound_response
    #     render json: {errors: "The hero_id and the power_id does not exist"}
    # end
end
