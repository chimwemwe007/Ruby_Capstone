require_relative '../classes/genre'
require_relative '../classes/item'

describe 'Create a new Genre' do
  before :each do
    @genre = Genre.new('Rap')
    @item = Item.new(name: 'name', publish_date: '2004-08-09', archived: false)
  end

  describe 'genre is an instance of Genre' do
    it 'items should be  an empty array' do
      expect(@genre.items).to be_empty
    end

    it 'is an instance of Genre' do
      expect(@genre).to be_instance_of(Genre)
    end

    it 'adds item to add_item method' do
      @genre.add_item(@item)
      expect(@item.genre).to eql @genre
    end

    it 'adds item to add_item method' do
      @genre.add_item(@item)
      expect(@genre.items).to match_array([@item])
    end
  end
end
