class AlbumsController < ApplicationController

  before_action :authenticate_user!

  def new
  end

  def index
    @albums = Album.where(user_id: current_user.id)
  end

  def create
    @album = Album.new(album_params)
    @album.user_id = current_user.id
    @album.save
    redirect_to @album
  end

  def show
    @album = Album.find(params[:id])
  end

  private
    def album_params
      params.require(:album).permit(:title, :id)
    end
end
