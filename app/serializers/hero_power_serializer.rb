class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :supername
  has_many :powers
end
