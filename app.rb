require_relative './classes/game'
require_relative './menu_optins/add_game'

class App
  attr_accessor :games

  def initialize
    @games = []
  end

  def list_games
    puts 'list games'
  end

  def list_authors
    puts 'list authors'
  end

  # def add_game
  #   puts 'add a game'
  # end
end
