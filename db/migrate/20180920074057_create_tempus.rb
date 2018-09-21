class CreateTempus < ActiveRecord::Migration[5.2]
  def change
    create_table :tempus do |t|
      t.references :literature, foreign_key: true
      t.references :date_type, foreign_key: true
      t.references :date_xsis, foreign_key: true
      t.string :date
      t.string :note

      t.timestamps
    end
  end
end
