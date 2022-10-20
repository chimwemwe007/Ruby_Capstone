require_relative '../classes/music_album'

describe MusicAlbum do
  context 'Instantiate the Music object' do
    music = MusicAlbum.new('true', '2020-10-24', true)

    describe '#new' do
      it 'Takes three parameters and returns a Music album object' do
        expect(music).to be_an_instance_of(MusicAlbum)
      end
    end

    it 'can be moved to archived?' do
      expect(music.move_to_archived?).to eq true
    end
  end
end
