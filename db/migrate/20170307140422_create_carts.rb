class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.float :total_price
      t.boolean :open
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
