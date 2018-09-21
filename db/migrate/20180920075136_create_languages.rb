class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.references :literature, foreign_key: true
      t.references :language_type, foreign_key: true
      t.string :language
      t.text :about

      t.timestamps
    end
  end
end
