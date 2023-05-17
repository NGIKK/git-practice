class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genres_id
      t.string :item_name
      t.text :description
      t.integer :price_without_tax
      t.boolean :sales_status
      t.timestamps
    end
  end
end
