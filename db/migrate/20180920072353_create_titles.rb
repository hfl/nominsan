class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.references :literature, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
