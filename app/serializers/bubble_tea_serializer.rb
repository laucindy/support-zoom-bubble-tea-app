class BubbleTeaSerializer < ActiveModel::Serializer
  attributes :id, :flavor, :size, :price

  def price
    object.price.to_f
  end
end
