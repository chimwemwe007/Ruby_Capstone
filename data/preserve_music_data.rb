require 'json'
require_relative '../classes/music_album'
require_relative '../classes/genre'
require_relative '../app'

def load_music
  if File.exist?('./data/music_album.json')
    file = File.open('./data/music_album.json')

    if file.size.zero?
      'There is nothing saved yet.'
    else
      music = JSON.parse(File.read('./data/music_album.json'))

      music.each do |musics|
        musics = MusicAlbum.new(musics['publish_date'], musics['on_spotify'])
        @music << musics
      end
    end
    file.close
  end
end

def load_genre
  if File.exist?('./data/genre.json')
    file = File.open('./data/genre.json')

    if file.size.zero?
      'There is nothing saved yet.'
    else
      genres = JSON.parse(File.read('./data/genre.json'))

      genres.each do |genre|
        genre = Genre.new(genre['name'])
        @genre << genre
      end
    end
    file.close
  end
end

def save_music(published_date, on_spotify)
  obj = {
    publish_date: published_date,
    on_spotify: on_spotify
  }

  if File.exist?('./data/music_album.json')
    file = File.open('./data/music_album.json')

    if file.size.zero?
      music = [obj]
    else
      music = JSON.parse(File.read('./data/music_album.json'))
      music << obj
    end

    file.close

    File.write('./data/music_album.json', JSON.pretty_generate(music))
  end
end

def save_genre(name)
  obj = {
    name: name
  }

  if File.exist?('./data/genre.json')
    file = File.open('./data/genre.json')

    if file.size.zero?
      genre = [obj]
    else
      genre = JSON.parse(File.read('./data/genre.json'))
      genre << obj
    end

    file.close

    File.write('./data/genre.json', JSON.pretty_generate(genre))
  end
end
