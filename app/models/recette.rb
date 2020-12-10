class Recette < ApplicationRecord
  # Relations
  belongs_to :user
  has_many :recette_ingredients
  has_many :ingredients, through: :recette_ingredients

  # Validations
  validates :titre, :etapes, presence: true
  #validate :valide_min_ingredient # une recette doit avoir au moins deux ingrédients

  # Fonctionnalité privé au modèle
  private
  def valide_min_ingredient
    if self.recette_ingredients.size < 1
      errors.add(:recette_ingredients, "need at least 2 items in a recipe")
    end
  end

end
