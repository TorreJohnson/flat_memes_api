class CreateMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :memes do |t|
      t.string :title
      t.string :image_url
      t.string :text
      t.integer :rating

      t.timestamps
    end
  end
end
