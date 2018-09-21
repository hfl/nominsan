class CreateContributors < ActiveRecord::Migration[5.2]
  def change
    create_table :contributors do |t|
      t.references :literature, foreign_key: true
      t.string :contributor
      t.references :role, foreign_key: true
      t.string :institution
      t.string :discipline
      t.string :authorid
      t.text :intr

      t.timestamps
    end
  end
end
