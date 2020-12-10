#Félix Carle-Milette 2020-11-03
class ApplicationController < ActionController::Base

    def get_recettes
        @recettes = current_user.recettes
    end

    def get_recettes_id 
        @recettes = Recette.find(params[:id])
    end
end
