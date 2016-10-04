class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :cooking_time, :instructions, :description, :cuisine_type, :difficulty_level
  has_many :ingredients, :users, :menus
end
