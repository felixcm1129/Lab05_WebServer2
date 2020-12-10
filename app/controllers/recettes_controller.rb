#Félix Carle-Milette 2020-11-03
class RecettesController < ApplicationController
    before_action :authenticate_user!, :get_recettes

    def show
        respond_to do |format|
            format.html{render 'recettes/show'}
            format.json{render 'recettes/show.json'}
            format.xml{render 'recettes/show.xml'}
        end
    end
    
    def new
        @recettes = Recette.new
    end

    def edit
        @recettes = current_user.recettes.find(params[:id])
    end

    def create
        # Securite lors d'une assignation de masse, on filtre les paramètres authoriser avant de les envoyer au modèle qui gère la base de données
        # Voir fonction privé de ce controlleur
        

        @recettes = current_user.recettes.new(recette_params)
        
        respond_to do |format|    
          if @recettes.save # Si la sauvegarde se passe bien, on redirige vers l'action index_5 pour rafraichir le formulaire
            format.html {redirect_to '/mesrecettes'}
          else
            format.html {render 'new' } # Si une erreur arrive, on l'affiche sur le formulaire d'origine
          end
          # Si utilisation en javascript
          format.json { render :json => @recettes.to_json }
          format.xml { render :xml => @recettes.as_json.to_xml }
        end
    end

    def update
        # Securite lors d'une assignation de masse, on filtre les paramètres authoriser avant de les envoyer au modèle qui gère la base de données
        # Voir fonction privé de ce controlleur

        @recettes = current_user.recettes.find(params[:id])        
        
        respond_to do |format|    
          if @recettes.update(recette_params) # Si la sauvegarde se passe bien, on redirige vers l'action index_5 pour rafraichir le formulaire
            format.html {redirect_to '/mesrecettes'}
          else
            format.html {render 'edit' } # Si une erreur arrive, on l'affiche sur le formulaire d'origine
          end
          # Si utilisation en javascript
          format.json { render :json => @recettes.to_json }
          format.xml { render :xml => @recettes.as_json.to_xml }
        end
    end

    def get_recettes
      @recettes = current_user.recettes
    end

    private
    def recette_params
        params.require(:recette).permit(:titre, :etapes)
    end
end