class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.belongs_to :item
      t.belongs_to :cart
      t.text :reason_for_purchase
      t.timestamps
    end
  end
end
