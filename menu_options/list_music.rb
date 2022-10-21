require_relative '../classes/music_album'

@music = []

def list_music
  puts 'MUSIC ALBUMS'
  @music.each do |music|
    puts "Publish Date: #{music.publish_date}, On Spotify: #{music.on_spotify}"
  end
end