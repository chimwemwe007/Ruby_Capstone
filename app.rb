require_relative './classes/game'
require_relative './menu_options/add_game'
require_relative 'menu'

class App
  attr_accessor :games

  def initialize
    @games = []
    @authors = []
    @menu = Menu.new
  end

  def list_games
    puts 'GAMES'
    @games.each do |game|
      puts "Publish Date: #{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
    end
  end

  def list_authors
    puts 'AUTHORS'
    @authors.each do |author|
      puts "First Name: #{author.first_name}, Last Name: #{author.last_name}"
    end
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
      puts 'give some albums'
      run
    when 7
      list_games
      run
    when 8
      puts 'do you know these authors?'
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
