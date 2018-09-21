class CreateRelationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :relation_types do |t|
      t.string :name
      t.string :code
      t.text :about

      t.timestamps
    end
  end
end
