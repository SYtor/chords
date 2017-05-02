class ChordToTag < ApplicationRecord
  belongs_to :chord
  belongs_to :tag
end
