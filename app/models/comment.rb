class Comment < ApplicationRecord
  belongs_to :comment_group
  belongs_to :user
end
