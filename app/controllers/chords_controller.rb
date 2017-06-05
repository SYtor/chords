class ChordsController < ApplicationController

  def index
    @list = Chord.where.not(author: 0).order('created_at DESC').limit(50)
  end

  def show
    id = params[:id]
    @chord = Chord.find(id)
    @comments = @chord.comments
  end
  
  def new
  end
  
  def create
    @c = Chord.new(params.require(:chord).permit(:title, :author, :content))
    @c.user_id = current_user.id
    @c.save
    redirect_to chords_path(@c.id)
  end
  
  def search
    query = params[:search]
    @list = Chord.find(:all, :conditions=>['title LIKE ?', "%#{query}%"])
  end
  
  def add_comment
    if current_user 
      m = Comment.new
      m.user_id = current_user.id
      m.chord_id = params[:chord_id]
      m.content = params[:message]
      m.save
      redirect_to chord_path(m.chord_id)
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
