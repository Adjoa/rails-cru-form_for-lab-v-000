class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    @artist.save

    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
