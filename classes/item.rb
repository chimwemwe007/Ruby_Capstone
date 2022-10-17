require 'date'

class Item
  def initialize(id, genre, author, source, label, publish_date, archived: true)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = date
    @archived = archived
  end
end