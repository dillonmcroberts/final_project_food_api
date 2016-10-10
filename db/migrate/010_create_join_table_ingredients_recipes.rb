class CreateJoinTableIngredientsRecipes < ActiveRecord::Migration[5.0]
  def change
    create_join_table :recipes, :ingredients do |t|
      t.index [:recipe_id, :ingredient_id]
      t.index [:ingredient_id, :recipe_id]
      t.integer :amount
      t.string :measurement
    end
  end
end
