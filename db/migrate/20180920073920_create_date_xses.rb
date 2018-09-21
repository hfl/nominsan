class CreateDateXses < ActiveRecord::Migration[5.2]
  def change
    create_table :date_xses do |t|
      t.string :name
      t.string :code
      t.string :ref
      t.text :about

      t.timestamps
    end
  end
end
