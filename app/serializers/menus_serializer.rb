class MenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :occasion, :description
  has_many :recipes, :users
end
