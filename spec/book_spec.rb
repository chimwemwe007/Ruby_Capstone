require_relative '../classes/book'

describe Book do
  context 'instantiate Book object' do
    book = Book.new('2000-10-10', 'Jhon Doe', 'Bad')

    it 'should print books publish date' do
      expect(book.publish_date).to eq '2000-10-10'
    end

    it 'should print books publisher' do
      expect(book.publisher).to eq 'Jhon Doe'
    end

    it 'should print books cover state' do
      expect(book.cover_state).to eq 'Bad'
    end
  end
end
