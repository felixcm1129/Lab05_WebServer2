class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :nom, blank: false, unique: true
      t.string :unite_defaut, blank: false

      t.timestamps
    end
  end
end
