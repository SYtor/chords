class TagsController < ApplicationController

  def search
    search = params[:search].split
    query = search.map { |item| "title like '%#{item}%'" }.join(" OR ")
    @tags = Tag.where(query)
  end

  def show
    id = params[:id]
    @tag = Tag.find(id)
    @chords = @tag.chords
  end

end
