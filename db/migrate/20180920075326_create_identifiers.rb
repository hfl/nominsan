class CreateIdentifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :identifiers do |t|
      t.references :literature, foreign_key: true
      t.references :identifier_type, foreign_key: true
      t.string :identifier

      t.timestamps
    end
  end
end
