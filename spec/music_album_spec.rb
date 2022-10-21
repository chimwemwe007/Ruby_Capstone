require_relative '../classes/music_album'

describe MusicAlbum do
  context 'Instantiate the Music object' do
    music = MusicAlbum.new('2020-10-24', false)

    describe '#new' do
      it 'Takes three parameters and returns a Music album object' do
        expect(music).to be_an_instance_of(MusicAlbum)
      end
    end
  end
end
