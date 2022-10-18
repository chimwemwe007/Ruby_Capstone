require_relative 'music_album'

class Genre
  attr_accessor :name

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(album)
    @items << album
    album.add_genre = self
  end

  private  

  attr_accessor :id, :items
end
