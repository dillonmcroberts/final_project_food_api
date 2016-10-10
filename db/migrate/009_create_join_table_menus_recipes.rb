class CreateJoinTableMenusRecipes < ActiveRecord::Migration[5.0]
  def change
    create_join_table :recipes, :menus do |t|
      t.index [:recipe_id, :menu_id]
      t.index [:menu_id, :recipe_id]
    end
  end
end
