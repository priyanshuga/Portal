class CreateStickers < ActiveRecord::Migration[6.1]
  def change
    create_table :stickers do |t|
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
