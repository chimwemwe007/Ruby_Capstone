require_relative 'music_album'

class Genre
  attr_accessor :name

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  

  end

  private

  attr_reader :id, :items
end