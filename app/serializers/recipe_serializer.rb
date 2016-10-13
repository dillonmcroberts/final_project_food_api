class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :cooking_time, :instructions, :description, :cuisine_type, :difficulty_level, :course
  has_many :ingredients
  has_many :users
  has_many :menus
end
