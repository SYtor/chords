class CreateCommentGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_groups do |t|      
      t.references :chord, foreign_key: true
      
      t.timestamps
    end
  end
end
