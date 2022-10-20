require_relative '../classes/book'

@books = []

def list_books
  puts 'BOOKS'
  @books.each do |book|
    puts "Publish Date: #{book.publish_date}, Publisher: #{book.publisher}, Cover State: #{book.cover_state}"
  end
end
