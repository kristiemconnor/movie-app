class Api::ActorsController < ActionController::Base

  def index 
    @actors = Actor.all
    render 'index2.json.jb'
  end

  def show
    @actor = Actor.find(params[:id])
    render 'actors.json.jb'
  end


  def create
    @actor = Actor.new( 
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for], 
    age: params[:age]
    )
    @actor.save

   if @actor.save 
     render 'actors.json.jb'
   else
     render json: message { @actor.errors.full_message}
   end

  end



  def update

    @actor = Actor.find_by( id: params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for,
    @actor.age = params[:age] || @actor.age
    @actor.save

     
    if @actor.save
      render 'actors.json.jb'
    else 
      render json: message { @actor.errors.full_message}
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
  
    render json: { message: 
    "Actor destroyed forever!"}
  end
end



















































