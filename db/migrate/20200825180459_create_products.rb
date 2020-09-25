class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price_usd
      t.float :price_gbp
      t.float :price_eur
      t.text :description
      t.boolean :sold_out
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
