class Plant < ApplicationRecord
    def index
        plant = Plant.all 
        render json: plant, status: ok

    end 
end
