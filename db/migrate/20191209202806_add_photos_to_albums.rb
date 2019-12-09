class AddPhotosToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :photos, :string
  end
end
