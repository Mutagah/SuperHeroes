class HeroesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :unfound_response 
    def index
        render json: Hero.all, status: :ok
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero,serializer: HeroheroSerializer, status: :ok
        
    end

    private

    def unfound_response
        render json: {error: "Hero not found"},status: :not_found
    end
end
