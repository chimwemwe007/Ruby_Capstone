require_relative '../classes/genre'
require_relative '../classes/music_album'
require_relative '../menu'
require_relative '../data/preserve_music_data'

@music = []
@genre = []
@menu = Menu.new

def add_music_album
  puts 'Available on spotify? [Y / N]'
  on_spotify = gets.chomp.downcase == 'y'
  puts 'Enter publish date in format (YYYY-MM-DD)'
  publish_date = Date.parse(gets.chomp)
  new_music_album = MusicAlbum.new(publish_date, on_spotify)
  @music.push(new_music_album)
  save_music(new_music_album.publish_date, new_music_album.on_spotify)
  puts "Enter genre details\n"
  puts 'Enter name'
  name = gets.chomp
  new_genre = Genre.new(name)
  @genre.push(new_genre)
  save_genre(new_genre.name)
  puts 'MUSIC ALBUM AND GENRE ADDED SUCCESSFULLY'
end
