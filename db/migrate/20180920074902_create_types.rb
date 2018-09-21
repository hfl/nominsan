class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.references :cadal_type, foreign_key: true
      t.references :literature, foreign_key: true

      t.timestamps
    end
  end
end
