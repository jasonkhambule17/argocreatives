class CreateBanners < ActiveRecord::Migration[6.0]
  def change
    create_table :banners do |t|
      t.string :title
      t.string :text
      t.string :link

      t.timestamps
    end
  end
end
