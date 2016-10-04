class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :avalibility, :price_level
  has_many :users, :menus, :recipes
end
