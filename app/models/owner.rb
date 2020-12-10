class Owner < ApplicationRecord
  has_many :stores

  validates :name, presence: true, length: { maximum: 50 }

  def stores_count
    self.stores.count
  end

  def list_stores
    self.stores
  end
end
