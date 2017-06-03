class ChordsController < ApplicationController

  def show
    id = params[:id]
    @chord = Chord.find(id)
    @tags = @chord.tags
    @comments = @chord.comments
  end
  
  def add_comment
    m = Comment.new
    m.user_id = 1
    m.chord_id = params[:chord_id]
    m.content = params[:message]
    m.save
    redirect_to chord_path(m.chord_id)  
  end
  
  def api_show
    id = params[:id]
    chord = Chord.find(id)
    tags = chord.tags
    render json: chord
  end

end
