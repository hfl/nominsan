class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.references :literature, foreign_key: true
      t.references :relation_type, foreign_key: true
      t.integer :parent_id

      t.timestamps
    end
  end
end
