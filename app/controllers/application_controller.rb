class Api::ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session

  def actors_page
    @actor =Actor.all
    render 'actors.json.jb'
  end



  def actor_1
    @actor = Actor.find_by(id: 1)
    render 'actors.json.jb'
  end

  def actor_2
    @actor = Actor.find_by(id: 2)
    render 'actors.json.jb'
  end

  def actor_3
    @actor = Actor.find_by(id: 3)
    render 'actors.json.jb'
  end

  def actor_4
    @actor = Actor.find_by(id: 4)
    render 'actors.json.jb'
  end

  def actor_5
    @actor = Actor.find_by(id: 5)
    render 'actors.json.jb'
  end

  def actor_6
    @actor = Actor.find_by(id: 6)
    render 'actors.json.jb'
  end

  
end
