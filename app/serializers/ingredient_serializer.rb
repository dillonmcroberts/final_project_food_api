class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :availability, :price_level
  has_many :recipes
end
