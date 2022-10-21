require_relative './classes/game'
require_relative './classes/book'
require_relative './menu_options/add_game'
require_relative './menu_options/add_book'
require_relative './menu_options/add_music'
require_relative 'menu'
require_relative './menu_options/list_games'
require_relative './menu_options/list_authors'
require_relative './menu_options/list_books'
require_relative './menu_options/list_labels'
require_relative './menu_options/list_music'
require_relative './menu_options/list_genre'
require_relative './data/preserve_game_data'
require_relative './data/preserve_book_data'
require_relative './data/preserve_music_data'

class App
  attr_accessor :games, :books, :music

  def initialize
    @games = []
    @authors = []
    @books = []
    @labels = []
    @music = []
    @genre = []
    @menu = Menu.new
  end

  def load_data
    load_games
    load_author
    load_books
    load_labels
    load_music
    load_genre
  end

  def run
    @menu.show_options
    input = gets.chomp.to_i
    select_option(input)
  end

  def select_option(input)
    case input
    when 1
      list_books
      run
    when 2
      list_labels
      run
    when 3
      add_book
      run
    when 4
      list_music
      run
    when 5
      list_genre
      run
    when 6
      add_music_album
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
