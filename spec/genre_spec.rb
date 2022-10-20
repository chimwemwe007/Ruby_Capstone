require_relative '../classes/genre'
require_relative '../classes/item'

describe Genre do
  context 'Instantiate the Genre object' do
    genre = Genre.new('jazz')

    describe '#new' do
      it 'Takes two parameters and returns a genre object' do
        genre = Genre.new('jazz')
        expect(genre).to be_an_instance_of(Genre)
      end
    end

    it 'Test genre attributes?' do
      genre = Genre.new('jazz')
      expect(genre.name).to eq 'jazz'
      expect(genre.items).to eq []
    end
  end
end
