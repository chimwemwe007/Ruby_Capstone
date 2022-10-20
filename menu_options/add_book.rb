require_relative '../classes/book'
require_relative '../classes/label'
require_relative '../menu'
require_relative '../data/preserve_book_data'

@books = []
@labels = []
@menu = Menu.new

def add_book
  puts 'Enter publisher'
  publisher = gets.chomp
  puts 'Enter publish date in format (YYYY-MM-DD)'
  publish_date = Date.parse(gets.chomp)
  puts 'Enter the cover state'
  cover_state = gets.chomp
  puts 'Enter title'
  title = gets.chomp
  puts 'Enter color'
  color = gets.chomp
  new_book = Book.new(publish_date, publisher, cover_state)
  @books.push(new_book)
  save_book(new_book.publish_date, new_book.publisher, new_book.cover_state)

  new_label = Label.new(title, color)
  @labels.push(new_label)
  save_label(new_label.title, new_label.color)
  puts 'BOOK AND LABEL CREATED SUCCESSFULLY'
end
