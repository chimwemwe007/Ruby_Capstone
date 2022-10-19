require_relative '../classes/game'
require_relative '../classes/author'
require_relative '../app'

@games = []
@authors = []

def add_game
  # get the values for author
  puts 'First name of the game author:'
  first_name = gets.chomp

  puts 'Last name of the game author:'
  last_name = gets.chomp

  # get the values for game
  puts 'Publish date of the game:'
  publish_date = gets.chomp

  puts 'Is it a multiplayer game? [Y/N]'
  multiplayer = gets.chomp.upcase
  case multiplayer
  when 'Y'
    multiplayer = true
  when 'N'
    multiplayer = false
  end

  puts 'What is the last played date? [YYYY-MM-DD]'
  # date_input = gets.chomp
  # last_played_at = DateTime.parse(date_input).to_date
  last_played_at = DateTime.parse(gets.chomp).to_date

  # create the game
  game = Game.new(publish_date, multiplayer, last_played_at)
  @games.push(game)

  # create the author using games id
  # i think i don't need id for author
  author = Author.new(first_name, last_name)
  @authors.push(author)
end
