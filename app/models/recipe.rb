class Recipe < ApplicationRecord
  has_many :ingredients_recipes
  has_many :ingredients , through: :ingredients_recipes
  has_many :users_recipes
  has_many :users, through: :users_recipes
  has_many :menus_recipes
  has_many :menus, through: :menus_recipes
end
