class CreateCreatives < ActiveRecord::Migration[6.0]
  def change
    create_table :creatives do |t|
      t.string :name
      t.text :description
      t.string :preview_text
      t.string :industry
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :spotify
      t.string :soundcoud
      t.string :apple_music
      t.string :youtube

      t.timestamps
    end
  end
end
