class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :author
      t.string :preview_text
      t.timestamps
    end
  end
end
