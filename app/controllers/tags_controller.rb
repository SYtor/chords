class TagsController < ApplicationController

  def show
    id = params[:id]
    @tag = Tag.find(id)
    @chords = @tag.chords
  end

end
