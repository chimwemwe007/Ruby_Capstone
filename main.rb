require_relative 'app'
require_relative './menu_options/add_game'
require_relative 'menu'

def main()
  app = App.new
  app.load_data
  puts 'Catalog of my things'
  app.run
end

main
