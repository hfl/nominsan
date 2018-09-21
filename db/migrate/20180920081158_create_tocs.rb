class CreateTocs < ActiveRecord::Migration[5.2]
  def change
    create_table :tocs do |t|
      t.references :literature, foreign_key: true
      t.string :chapter
      t.string :title
      t.string :page
      t.integer :fiel_number
      t.integer :parent_id

      t.timestamps
    end
  end
end
