class CreateEditions < ActiveRecord::Migration[5.2]
  def change
    create_table :editions do |t|
      t.references :literature, foreign_key: true
      t.references :edition_type, foreign_key: true
      t.string :edition

      t.timestamps
    end
  end
end
