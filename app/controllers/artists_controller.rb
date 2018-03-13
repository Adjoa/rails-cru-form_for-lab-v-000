class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
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

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
