require_relative './classes/game'
require_relative './menu_options/add_game'
require_relative 'menu'
require_relative './menu_options/list_games'
require_relative './menu_options/list_authors'

class App
  attr_accessor :games

  def initialize
    @games = []
    @authors = []
    @menu = Menu.new
  end

  def run
    @menu.show_options
    input = gets.chomp.to_i
    select_option(input)
  end

  def select_option(input)
    case input
    when 1
      puts 'listing some books books books'
      run
    when 2
      puts 'listing some labels'
      run
    when 3
      puts 'gonna add a book'
      run
    when 4
      puts 'here are the albums'
      run
    when 5
      puts 'look at all the genres'
      run
    when 6
      puts 'add_an_album'
      run
    when 7
      list_games
      run
    when 8
      list_authors
      run
    when 9
      puts 'what is your source'
      run
    when 10
      add_game
      run
    when 11
      exit
    else
      puts 'Wrong input!'
      run
    end
  end
end
