class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Définition d'une méthode static pour la liste des unités possibles
  def self.ingredient_unites
    %w(ts tbs tasse ml unite)
  end
end
