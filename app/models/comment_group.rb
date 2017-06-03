class CommentGroup < ApplicationRecord  
  belongs_to :chord
  has_many :chords
end
