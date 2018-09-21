class CreateCadalTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :cadal_types do |t|
      t.string :name
      t.string :code
      t.text :about

      t.timestamps
    end
  end
end
