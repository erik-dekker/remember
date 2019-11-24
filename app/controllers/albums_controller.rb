class AlbumsController < ApplicationController

  before_action :authenticate_user!

  def new
  end

  def create
    @album = Album.create(album_params)
    redirect_to @album
  end

  private
    def album_params
      params.require(:album).permit(:title)
    end
end
