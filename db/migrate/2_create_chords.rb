class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|    
      t.string :title     
      t.references :user, foreign_key: true
      # type: 0 - author, else - id of author
      t.integer :author, :default => 0   
      t.integer :views, :default => 0
      t.text :content

      t.timestamps
    end
  end
end
