class MenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :occasion, :description
  has_many :recipes
  has_many :users
end
