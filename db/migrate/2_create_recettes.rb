class CreateRecettes < ActiveRecord::Migration[5.2]
  def change
    create_table :recettes do |t|
      t.belongs_to :user, foreign_key: true
      
      t.string :titre
      t.text :etapes
      t.string :image, default:"food.jpg"

      t.timestamps
    end
  end
end
