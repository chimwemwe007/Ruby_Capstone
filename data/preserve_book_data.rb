require 'json'
require_relative '../classes/book'
require_relative '../classes/label'
require_relative '../app'

def load_books
  if File.exist?('./data/books.json')
    file = File.open('./data/books.json')

    if file.size.zero?
      'There is nothing saved yet.'
    else
      books = JSON.parse(File.read('./data/books.json'))

      books.each do |book|
        book = Book.new(book['publish_date'], book['publisher'], book['cover_state'])
        @books << book
      end
    end
    file.close
  end
end

def load_labels
  if File.exist?('./data/labels.json')
    file = File.open('./data/labels.json')

    if file.size.zero?
      'There is nothing saved yet.'
    else
      labels = JSON.parse(File.read('./data/labels.json'))

      labels.each do |label|
        label = Label.new(label['title'], label['color'])
        @labels << label
      end
    end
    file.close
  end
end

def save_book(publish_date, publisher, cover_state)
  obj = {
    publish_date: publish_date,
    publisher: publisher,
    cover_state: cover_state
  }

  if File.exist?('./data/books.json')
    file = File.open('./data/books.json')

    if file.size.zero?
      book = [obj]
    else
      book = JSON.parse(File.read('./data/books.json'))
      book << obj
    end

    file.close

    File.open('./data/books.json', 'w') do |f|
      f.write(JSON.pretty_generate(book))
    end
  end
end

  def save_label(title, color)
    obj = {
      title: title,
      color: color
    }

    if File.exist?('./data/labels.json')
      file = File.open('./data/labels.json')

      if file.size.zero?
        label = [obj]
      else
        label = JSON.parse(File.read('./data/labels.json'))
        label << obj
      end

      file.close

      File.open('./data/labels.json', 'w') do |f|
        f.write(JSON.pretty_generate(label))
      end
    end
  end
