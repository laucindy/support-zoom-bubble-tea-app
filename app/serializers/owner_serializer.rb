class OwnerSerializer < ActiveModel::Serializer
  attributes :name

  has_many :stores
end
