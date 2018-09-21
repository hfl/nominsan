class CreateAlternativeTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :alternative_titles do |t|
      t.references :title, foreign_key: true
      t.string :alternative_title

      t.timestamps
    end
  end
end
