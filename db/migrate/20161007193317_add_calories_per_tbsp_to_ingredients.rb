class AddCaloriesPerTbspToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :caloriespertbsp, :string
  end
end
