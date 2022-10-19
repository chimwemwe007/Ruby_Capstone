require 'json'
require_relative '../classes/book'
require_relative '../classes/label'

class PreserveBookData
  attr_accessor :books, :labels

  def initialize
    @books = []
    @labels = []
  end

  def read_books
    return unless File.exist?('books.json')

    books_loaded = JSON.parse(File.read('books.json'))
    books_loaded.each do |book|
      new_book = Book.new(book['id'], book['publish_date'], book['publisher'], book['cover_state'])
      new_label = @labels.select { |label| label.id == book['label_id'] }[0]
      new_book.add_label(new_label)
      @books << new_book
    end
  end

  def read_labels
    return unless File.exist?('labels.json')

    labels_loaded = JSON.parse(File.read('labels.json'))
    labels_loaded.each do |label|
      new_label = Label.new(label['id'], label['title'], label['color'])
      @labels << new_label
    end
  end

  def save_book(book)
    new_book = { id: book.id, publish_date: book.publish_date, publisher: book.publisher,
                 cover_state: book.cover_state, label_id: book.label.id }
    if File.exist?('books.json')
      books_loaded = JSON.parse(File.read('books.json'))
      books_loaded << new_book
      File.write('books.json', JSON.pretty_generate(books_loaded))
    else
      File.write('books.json', JSON.pretty_generate([new_book]))
    end
  end

  def save_label(label)
    new_label = { id: label.id, title: label.title, color: label.color }
    if File.exist?('labels.json')
      labels_loaded = JSON.parse(File.read('labels.json'))
      labels_loaded << new_label
      File.write('labels.json', JSON.pretty_generate(labels_loaded))
    else
      File.write('labels.json', JSON.pretty_generate([new_label]))
    end
  end
end
