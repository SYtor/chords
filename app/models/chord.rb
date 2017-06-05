class Chord < ApplicationRecord
  has_many :chord_to_tags
  has_many :tags, :through => :chord_to_tags  
  belongs_to :user
  has_many :comments  
end
