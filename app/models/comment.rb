class Comment < ApplicationRecord
  belongs_to :chord
  belongs_to :user
end
