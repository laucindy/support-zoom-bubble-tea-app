class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :brand

  belongs_to :owner
  has_many :bubble_teas
end
