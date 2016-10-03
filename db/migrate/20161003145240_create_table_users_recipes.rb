class CreateTableUsersRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :users_recipes do |t|
      t.references :user
      t.references :recipe
    end
  end
end
