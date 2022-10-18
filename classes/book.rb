require 'item'

class Book < Item
  def initialize(id, publish_date, publisher, cover_state)
    super(id, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end
end
