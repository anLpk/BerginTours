class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :image
      t.string :author
      t.string :author_img

      t.timestamps
    end
  end
end
