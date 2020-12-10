class CreateBubbleTeas < ActiveRecord::Migration[6.0]
  def change
    create_table :bubble_teas do |t|
      t.string :flavor
      t.string :size
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
