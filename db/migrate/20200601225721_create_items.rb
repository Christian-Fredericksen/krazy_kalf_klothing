class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.boolean :custom
      t.string :name
      t.text :description
      t.string :size
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
