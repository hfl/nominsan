class CreateDegrees < ActiveRecord::Migration[5.2]
  def change
    create_table :degrees do |t|
      t.references :literature, foreign_key: true
      t.string :grantor
      t.string :displine
      t.string :level

      t.timestamps
    end
  end
end
