class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.references :literature, foreign_key: true
      t.string :cover
      t.string :title
      t.string :colophon
      t.string :copyright
      t.string :abstract
      t.string :toc
      t.string :foreword
      t.string :preface
      t.string :content
      t.string :index
      t.string :loi
      t.string :reference
      t.string :backcover
      t.integer :total_page

      t.timestamps
    end
  end
end
