class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
