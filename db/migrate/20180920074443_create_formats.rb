class CreateFormats < ActiveRecord::Migration[5.2]
  def change
    create_table :formats do |t|
      t.references :format_mime, foreign_key: true
      t.integer :format_extent_size
      t.references :format_extent, foreign_key: true
      t.integer :scan_resolution
      t.references :literature, foreign_key: true

      t.timestamps
    end
  end
end
