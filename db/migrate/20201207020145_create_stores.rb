class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :brand
      t.integer :owner_id

      t.timestamps
    end
  end
end
