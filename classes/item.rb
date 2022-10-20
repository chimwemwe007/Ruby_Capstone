require 'date'

class Item
  attr_accessor :publish_date

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    # @genre = genre
    # @author = author
    # @source = source
    # @label = label
    @publish_date = publish_date
    @archived = archived
  end

  private

  def can_be_archived?
    (Time.new.year - @publish_date) > 10
  end
end
