class Api::ActorsController < ActionController::Base


def index
  @actors = Actor.all
  render "index2.json.jb"

end

def show
  @actor = Actor.find_by(id: params[:id])
  render "show.json.jb"
end

def create
  @actor = Actor.new(
  first_name: params[:first_name],
  last_name: params[:last_name],
  known_for: params[:known_for]
  )

  @actor.save
  render "show.json.jb"
end

def update
  @actor = Actor.find_by(id: params[:id])

  @actor.first_name = params[:first_name] || @actor.first_name
  @actor.last_name = params[:last_name] || @actor.last_name
  @actor.known_for = params[:known_for] || @actor.known_for

  @actor.save
  render "show.json.jb"

end



def destroy
  actor = Actor.find_by(id: params[:id])
  actor.destroy
  render json: { message: "Actor successfully destroyed."}
end









end