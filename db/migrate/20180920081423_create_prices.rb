class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.references :literature, foreign_key: true
      t.references :currency, foreign_key: true
      t.integer :number
      t.text :about

      t.timestamps
    end
  end
end
