class CreateLanguageTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :language_types do |t|
      t.string :name
      t.string :code
      t.text :about

      t.timestamps
    end
  end
end
