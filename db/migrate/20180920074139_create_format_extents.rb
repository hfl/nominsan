class CreateFormatExtents < ActiveRecord::Migration[5.2]
  def change
    create_table :format_extents do |t|
      t.string :name
      t.string :code
      t.text :about

      t.timestamps
    end
  end
end
