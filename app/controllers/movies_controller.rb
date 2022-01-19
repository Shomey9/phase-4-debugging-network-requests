class MoviesController < ApplicationController
  
  def create
    # Movi instead of Movie
    movie = Movi.create(movie_params)
    render json: movie
  end

  def index
    movies = Movie.all
    render json: movies
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
