class CreateRecetteIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recette_ingredients do |t|
      t.belongs_to :recette, foreign_key: true
      t.belongs_to :ingredient, foreign_key: true

      t.decimal :quantite, precision: 5, scale: 2 # 5 entier et 2 décimal
      t.string :unite

      t.timestamps
    end
  end
end
