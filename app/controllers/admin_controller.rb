#Félix Carle-Milette 2020-11-03
class AdminController < ApplicationController
  before_action :is_admin?, :authenticate_user!
  
  private
  def is_admin?
    unless current_user.admin == true
      redirect_to '/'
    end
  end

  def get_recettes_id 
    @recettes = Recette.find(params[:id])
  end
end