class Menu < ApplicationRecord
  # validates: name, :presence => true
  # validates: occasion, :presence => true
  # validates: description, :presence => true

  has_many :menus_user
  has_many :users , through: :menus_user
  has_many :menus_recipes
  has_many :recipes, through: :menus_recipes
end
