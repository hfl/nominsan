class CreateMarcs < ActiveRecord::Migration[5.2]
  def change
    create_table :marcs do |t|
      t.references :literature, foreign_key: true
      t.references :marc_type, foreign_key: true
      t.string :marc

      t.timestamps
    end
  end
end
