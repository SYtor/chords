class ChordsController < ApplicationController

  def show
    id = params[:id]
    @chord = Chord.find(id)
    @tags = @chord.tags
  end
  
  def api_show
    id = params[:id]
    chord = Chord.find(id)
    tags = chord.tags
    render json: chord
  end

end
