class AddCreatorIdToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :creator_id, :integer
  end
end
