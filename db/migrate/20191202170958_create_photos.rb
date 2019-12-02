class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :thumbnail
      t.string :img_data
      t.belongs_to :album
      t.timestamps
    end
  end
end
