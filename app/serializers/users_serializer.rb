class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location, :fav_foods
  has_many :recipes, :menus
end
