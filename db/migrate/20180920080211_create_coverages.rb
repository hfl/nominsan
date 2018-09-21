class CreateCoverages < ActiveRecord::Migration[5.2]
  def change
    create_table :coverages do |t|
      t.references :literature, foreign_key: true
      t.references :coverage_type, foreign_key: true
      t.string :coverage

      t.timestamps
    end
  end
end
