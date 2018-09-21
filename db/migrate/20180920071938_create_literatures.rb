class CreateLiteratures < ActiveRecord::Migration[5.2]
  def change
    create_table :literatures do |t|
      t.string :mlid

      t.timestamps
    end
  end
end
