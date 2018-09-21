class CreateFormatMimes < ActiveRecord::Migration[5.2]
  def change
    create_table :format_mimes do |t|
      t.string :name
      t.string :code
      t.text :about

      t.timestamps
    end
  end
end
