class BubbleTeaSerializer < ActiveModel::Serializer
  attributes :id, :flavor, :size, :price

  belongs_to :store

  def price
    object.price.to_f
  end
end
