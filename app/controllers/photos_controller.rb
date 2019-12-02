class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @album = Album.find(params[:album_id])
  end

  def create
    @photo = Photo.new
    @photo.album_id = params[:album_id]
    @photo.save
    redirect_to album_path(@photo.album_id)
  end

  private
    def photo_params
      params.require(:photo).permit(:title, :description, :img_data)
    end
end
