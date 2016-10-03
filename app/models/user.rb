class User < ApplicationRecord
  has_secure_password
  has_many :users_recipes
  has_many :recipes, through: :users_recipes
  has_many :menus_users
  has_many :menus, through: :menus_users

end
