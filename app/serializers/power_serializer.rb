class PowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
#  as_many :heroes, through: :heropowers
#   has_many :hero_powers h
end