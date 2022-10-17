@options = [
  '1: List all books',
  '2: List all labels',
  '3: Add a book',
  '4: List all music albums',
  '5: List all genres',
  '6: Add a music album',
  '7: List all games',
  '8: List all authors',
  '9: Add a game',
  '10: Exit'
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
  when 8
    # call method to list authors
  when 9
    # call method to add game
  when 10
    Exit
  else
    puts 'Wrong input!'
  end
end

def main()
  input = gets.chomp.to_i
  select_option(input)
end

main
