class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.string :description
      t.string :cuisine_type
      t.string :cooking_time
      t.string :difficulty_level
      t.timestamps
    end
  end
end
