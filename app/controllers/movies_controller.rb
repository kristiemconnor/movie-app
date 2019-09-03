class Api::MoviesController < ActionController::Base

  def index
    @movies = Movie.all
    render 'index.json.jb'
  end

  def create

    @movie = Movie.new(

     title: params[:title],
      year: params[:year],
      plot: params[:plot]
      )
    @movie.save

    render 'movies.json.jb'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.json.jb'
  end


end