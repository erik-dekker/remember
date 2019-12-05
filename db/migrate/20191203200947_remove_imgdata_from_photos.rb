class RemoveImgdataFromPhotos < ActiveRecord::Migration[6.0]
  def change

    remove_column :photos, :img_data, :string
  end
end
