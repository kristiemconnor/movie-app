class Api::MoviesController < ActionController::Base

 def movies_page
    @amovies = Movie.all
    render 'movies.json.jb'
  end



  def movie_1
    @movie = Movie.find_by(id: 1)
    render 'movies.json.jb'
  end

  def movie_2
    @movie = Movie.find_by(id: 2)
    render 'movies.json.jb'
  end

  def movie_3
    @movie = Movie.find_by(id: 3)
    render 'movies.json.jb'
  end

  def movie_4
    @movie = Movie.find_by(id: 4)
    render 'movies.json.jb'
  end


end