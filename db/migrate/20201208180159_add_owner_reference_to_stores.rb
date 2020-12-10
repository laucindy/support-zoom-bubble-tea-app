class AddOwnerReferenceToStores < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :owner_id
    add_reference :stores, :owner, null: false, foreign_key: true
  end
end
