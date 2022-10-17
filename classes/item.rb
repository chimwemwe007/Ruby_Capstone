require 'date'

class Item
  def initialize(_id, genre, author, source, label, publish_date, archived: true)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  private

  def can_be_archived?
    (Time.new.year - @publish_date) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  attr_reader :id, :archived
end
