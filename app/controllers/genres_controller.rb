class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(artist_params(:name, :bio))
    @genre.save

    redirect_to artist_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(artist_params(:name, :bio))

    redirect_to artist_path(@genre)
  end

  private

  def artist_params(*args)
    params.require(:genre).permit(*args)
  end

end
