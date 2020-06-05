class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :customer
      t.datetime :shopping_date

      t.timestamps
    end
  end
end