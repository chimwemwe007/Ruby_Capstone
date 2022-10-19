require_relative './classes/game'
require_relative './menu_options/add_game'
require_relative 'menu'

@menu = Menu.new

class App
  attr_accessor :games

  def initialize
    @games = []
    @authors = []
  end

  def list_games
    puts 'GAMES'
    @games.each do |game|
      puts "Publish Date: #{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
    end
  end

  def list_authors
    puts 'list authors'
  end
end
