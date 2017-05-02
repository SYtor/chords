class Api::ChordsController < ApplicationController
  def show
    id = params[:id]
    chord = Chord.find(id)
    result = {:chord => chord, :tags => chord.tags }
    render json: result
  end
end
