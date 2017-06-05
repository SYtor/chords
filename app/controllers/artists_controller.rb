class ArtistsController < ApplicationController

  def index
    @list = Chord.where(author: 0).order('updated_at DESC').limit(50)
  end
  
  def new
  end
  
  def create    
    @c = Chord.new(params.require(:chord).permit(:title, :content))
    @c.user_id = current_user.id
    @c.save
    redirect_to artists_path(@c.id)
  end
  
  def show    
    id = params[:id]
    @artist = Chord.find(id)
    @chords = Chord.where(author: id).order('updated_at DESC')
    @comments = @artist.comments
  end
  
end
