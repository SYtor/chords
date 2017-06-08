class ChordsController < ApplicationController

  def index
    @list = Chord.where.not(author: 0).order('created_at DESC').limit(50)
  end

  def show
    id = params[:id]
    @chord = Chord.find(id)
    @chord.views = @chord.views + 1
    @shord.save
    @comments = @chord.comments
  end
  
  def new
    if !current_user
      redirect_to login_path
    end
    @artist = Chord.find(params[:id])
  end
  
  def create
    if !current_user
      redirect_to login_path
      return
    end
    @c = Chord.new(params.require(:chord).permit(:title, :author, :content))
    @c.user_id = current_user.id
    @c.author = params[:author]
    @c.save
    redirect_to chord_path(@c.id)
  end
  
  def search
    query = params[:search]
    @list = Chord.where("LOWER(title) ILIKE LOWER(?)",'%'+query+'%')
  end
  
  def add_comment
    if current_user 
      m = Comment.new
      m.user_id = current_user.id
      m.chord_id = params[:chord_id]
      m.content = params[:message]
      m.save
      if Chord.find(params[:chord_id]).author == 0        
        redirect_to artist_path(m.chord_id)
      else
        redirect_to chords_path(m.chord_id)
      end
    else
      redirect_to login_path
    end
  end
  
  def api_show
    id = params[:id]
    chord = Chord.find(id)
    tags = chord.tags
    render json: chord
  end

end
