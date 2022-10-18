require_relative '../classes/book'
require_relative '../classes/item'
require 'date'

describe Book do
  context 'When testing the Book class' do
    it 'Should create a book' do
      book = Book.new(1, '2010-01-01', 'Kidist Dinku', 'good')
      expect(book.publisher).to eq('Kidist Dinku')
      expect(book.cover_state).to eq('good')
    end

    it 'Should be an instance of Book' do
      book = Book.new(1, Date.parse('2020-10-12'), 'Kidist Dinku', 'good')
      expect(book).to be_an_instance_of(Book)
    end
  end
end
