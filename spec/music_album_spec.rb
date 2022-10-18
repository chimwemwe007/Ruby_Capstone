require_relative '../classes/music_album'

describe 'Create music album' do
  before :each do
    @music_album = MusicAlbum.new(name: 'name', publish_date: '2001-04-05', archived: false, on_spotify: true)
  end

  describe 'Create an instance of MusicAlbum' do
    it 'is an instance of the MusicAlbum' do
      expect(@music_album).to be_instance_of MusicAlbum
    end

    it 'show inheritance from Item class' do
      expect(@music_album).to be_kind_of(Item)
    end

    it ' archived to be false' do
      expect(@music_album.archived).to be false
    end
    it 'shows on_spotify to be true' do
      expect(@music_album.on_spotify).to be true
    end
  end
end
