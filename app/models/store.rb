class Store < ApplicationRecord
  belongs_to :owner
  has_many :bubble_teas, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :brand, presence: true, length: { maximum: 50 }
  validates :owner_id, presence: true, length: { maximum: 25 }
end
