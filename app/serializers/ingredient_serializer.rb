class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :availability, :price_level,:description,:caloriespertbsp
  has_many :recipes
end
