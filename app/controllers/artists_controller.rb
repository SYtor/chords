class ArtistsController < ApplicationController

  def index
    @list = Chord.where(author: 0).order('updated_at DESC').limit(50)
  end
  
  def new
    if !current_user
      redirect_to login_path
    end
  end
  
  def create
    if !current_user
      redirect_to login_path
      return
    end
    @c = Chord.new(params.require(:chord).permit(:title, :content))
    @c.user_id = current_user.id
    @c.save
    redirect_to artist_path(@c.id)
  end
  
  #TODO user path
  
  def show    
    id = params[:id]
    @artist = Chord.find(id)
    @artist.views = @artist.views + 1
    @artist.save
    @chords = Chord.where(author: id).order('updated_at DESC')
    @comments = @artist.comments
  end
  
end
