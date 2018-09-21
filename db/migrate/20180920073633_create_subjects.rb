class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.references :literature, foreign_key: true
      t.references :subject_type, foreign_key: true
      t.string :subject

      t.timestamps
    end
  end
end
