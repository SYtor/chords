class CreateChordToTags < ActiveRecord::Migration[5.0]
  def change
    create_table :chord_to_tags do |t|
      t.references :chord, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
