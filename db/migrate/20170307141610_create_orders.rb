class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.float :price
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
