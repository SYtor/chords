class WelcomeController < ApplicationController
  def index
    @updates = Chord.order('createded_at DESC').limit(20)
    @top = Chord.order('views DESC').limit(20)
  end
end
