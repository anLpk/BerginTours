class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.string :duration
      t.string :tag_text
      t.string :group_size
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
