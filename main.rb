require_relative 'app'
require_relative './menu_options/add_game'

@app = App.new

@options = [
  '1: List all books',
  '2: List all labels',
  '3: Add a book',
  '4: List all music albums',
  '5: List all genres',
  '6: Add a music album',
  # below
  '7: List all games',
  # below
  '8: List all authors',
  '9: List all sources',
  # and below
  '10: Add a game',
  '11: Exit'
]

def select_option(input)
  case input
  when 1
    # call method to list books
  when 2
    # call method to list labels
  when 3
    # call method to add book
  when 4
    # call method to list albums
  when 5
    # call method to list genres
  when 7
    # call method to list games
    # @app.list_games
  when 8
  # call method to list authors

  when 9
    # @app.list_authors

  when 10
    # call method to add game
    add_game
  when 11
    exit
  else
    puts 'Wrong input!'
  end
end

def main()
  # temp
  @options.each do |item|
    puts item
  end
  # temp
  input = gets.chomp.to_i
  select_option(input)
end

main
