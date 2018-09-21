class CreateRights < ActiveRecord::Migration[5.2]
  def change
    create_table :rights do |t|
      t.references :literature, foreign_key: true
      t.references :right_type, foreign_key: true
      t.string :right

      t.timestamps
    end
  end
end
