class AddCourseToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :course, :string
  end
end
