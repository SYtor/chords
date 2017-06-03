class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.integer :views, :default => 0
    end
  end
end
