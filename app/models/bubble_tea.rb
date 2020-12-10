class BubbleTea < ApplicationRecord
  belongs_to :store

  validates :flavor, presence: true, length: { maximum: 50 }
  validates :size, presence: true, length: { maximum: 10 }
  validates :price, presence: true, length: { maximum: 5 }
end
