class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.references :literature, foreign_key: true
      t.references :description_type, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
