class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @album = Album.find(params[:album_id])
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.album_id = params[:album_id]
    @photo.save
    redirect_to album_path(@photo.album_id)
  end

  def new_photo
    @photo =

  private
    def photo_params
      params.permit(:title, :description, :photos)
    end
end
