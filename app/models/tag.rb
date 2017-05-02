class Tag < ApplicationRecord
  has_many :chord_to_tags
  has_many :chords, through: :chord_to_tags
end
