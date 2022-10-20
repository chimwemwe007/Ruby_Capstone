require_relative '../classes/genre'
require_relative '../classes/music_album'
require_relative '../classes/book'
require_relative '../classes/label'
require_relative '../classes/game'
require_relative '../classes/author'

module Help
  def add_all_items(list)
    list.each do |item|
      add_item(
        Item.new(item['id'], item['publish_date'])
      )
    end
  end

  def clear_items
    @items.clear
  end

  def shallow_copy
    copy = clone
    copy.clear_items
    clone
  end
end
