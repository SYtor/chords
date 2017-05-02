# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chords = [
          {:title=>"Unravel",:content=>"C Em D Em"},
          {:title=>"Daze",:content=>"Ka Em D Em"},
          {:title=>"Zetsubou",:content=>"C Em D Em"},
          {:title=>"Shinkiro",:content=>"C Em D Em"}
         ]
tags = [
        {:title=>"Ling Toshite"},{:title=>"Neko"},{:title=>"Inu"}
       ]
       
chords.each do |c|
  Chord.create(c)
end

tags.each do |t|
  Tag.create(t)
end

