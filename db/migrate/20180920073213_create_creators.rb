class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.references :literature, foreign_key: true
      t.string :creator
      t.references :role, foreign_key: true
      t.string :institution
      t.string :discipline
      t.string :authorid
      t.text :intr

      t.timestamps
    end
  end
end
