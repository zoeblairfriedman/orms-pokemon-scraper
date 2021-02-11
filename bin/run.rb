require_relative "environment"

Scraper.new(@db).scrape

all_pokemon = @db.execute("SELECT * FROM pokemon;")

# test out your code here!

# all_pokemon.map do |row|
#     puts "#{row[1]} // #{row[2]}"
# end

water_pokemon = @db.execute("SELECT name FROM pokemon WHERE type = 'Water';")
# puts fire_pokemon
# puts Pokemon.find(1, @db).name
Pokemon.save('Chewtle', 'Water', @db)
puts water_pokemon