require_relative '../classes/genre'

@genre= []

def list_genre
  puts 'GENRE'
  @genre.each do |genre|
    puts "Name: #{genre.name}"
  end
end