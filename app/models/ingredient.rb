class Ingredient < ApplicationRecord
  # validates: name, :presence => true, :uniqueness => true
  # validates: price_level, numericality: {only_integer: true}
  # validates: availability, numericality: {only_integer: true}

  has_many :ingredients_recipes
  has_many :recipes , through: :ingredients_recipes
end
