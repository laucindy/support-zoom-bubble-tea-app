class AddStoreReferenceToBubbleTeas < ActiveRecord::Migration[6.0]
  def change
    add_reference :bubble_teas, :store, null: false, foreign_key: true
  end
end
