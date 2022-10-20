require_relative './classes/genre'
require_relative '../classes/music_album'
require 'json'

module MusicGenre
  @music_albums = []
  @genres = []

  def self.file_exist?(filename)
    File.exist? filename
  end

  def self.save_data
    music_album = @music_albums.map do |album|
      { on_spotify: album.on_spotify, publish_date: album.publish_date }
    end
    File.write('data/music.json', JSON.pretty_generate(music_album))
    genre = @genres.map do |gen|
      { name: gen.name }
    end
    File.write('data/genre.json', JSON.pretty_generate(genre))
  end

  def self.load_data
    path = 'data/music.json'
    if file_exist?(path)
      music_album = JSON.parse(File.read(path))
      music_album.each do |album|
        @music_albums << MusicAlbum.new(album['on_spotify'], album['publish_date'], false)
      end
    else
      puts 'music_album.json file does not exist'
    end
    path2 = 'data/genre.json'
    if file_exist?(path2)
      genres = JSON.parse(File.read(path2))
      genres.each do |genre|
        @genres << Genre.new(genre['name'])
      end
    else
      puts 'genres.json file does not exist'
    end
  end

  def self.add_music_album
    music_genre = add_genre
    print 'is album on spotify? ("true" or "false"): '
    on_spotify = gets.chomp.downcase
    print 'Enter the album\'s publish date (eg.2022-10-24): '
    publish_date = gets.chomp
    music_album = MusicAlbum.new(on_spotify, publish_date, false)
    @music_albums.push(music_album)
    music_genre.add_items(music_album)
    puts "\n*** music album successfully added ***\n"
  end

  def self.add_genre
    print 'Enter the genre name: '
    name = gets.chomp
    genre = Genre.new(name)
    @genres.push(genre)
    genre
  end

  def self.list_music_album
    if @music_albums.empty?
      puts 'No Music album  added yet'
    else
      @music_albums.each do |music|
        puts "on_spotify: #{music.on_spotify}  Publish date: #{music.publish_date}"
      end
    end
  end

  def self.list_genres
    if @genres.empty?
      puts 'No genre added yet'
    else
      @genres.each do |genre|
        puts "genre name: #{genre.name}"
      end
    end
  end
end
