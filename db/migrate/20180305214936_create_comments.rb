class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :rating
      t.integer :meme_id

      t.timestamps
    end
  end
end
