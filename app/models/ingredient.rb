class Ingredient < ApplicationRecord
  # Relations
  has_many :recette_ingredients
  has_many :recettes, through: :recette_ingredients

  # Validations
  validates :unite_defaut, inclusion: { in: ApplicationRecord.ingredient_unites}
end
