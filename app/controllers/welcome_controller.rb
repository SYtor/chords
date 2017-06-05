class WelcomeController < ApplicationController
  def index
    @list = Chord.order('updated_at DESC').limit(20)
  end
end
