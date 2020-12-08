class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :brand

  belongs_to :owner
end
