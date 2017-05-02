class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|
      t.string :title
      t.text :content
      t.integer :views
    end
  end
end
