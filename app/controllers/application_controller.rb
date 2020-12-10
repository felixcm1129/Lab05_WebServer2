#Félix Carle-Milette 2020-11-03
class ApplicationController < ActionController::Base
    def get_all_recettes
        @recettes = Recette.all
    end
end
