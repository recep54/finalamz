class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :surl
      t.string :title
      t.string :price
      t.string :asin
      t.string :price_es
      t.string :price_it
      t.string :price_de

      t.timestamps
    end
  end
end
