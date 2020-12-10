class RecetteIngredient < ApplicationRecord
  # Relations
  belongs_to :recette
  belongs_to :ingredient

  # Validations
  validates :quantite, length: { minimum: 0, maximum: 999 }
  validates :unite, inclusion: { in: ApplicationRecord.ingredient_unites }

  # Callback sur les événements d'un modèle
  # https://api.rubyonrails.org/classes/ActiveRecord/Callbacks.html
  before_validation :set_unite_if_not_set, only: [:create]

  private
  def set_unite_if_not_set
    if self.unite.blank?
      self.unite = self.ingredient.unite_defaut
    end
  end
end
