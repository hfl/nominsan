class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.references :literature, foreign_key: true
      t.text :source

      t.timestamps
    end
  end
end
