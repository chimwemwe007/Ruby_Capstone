require 'item'

class Book < Item
  attr_reader :cover_state, publisher

  def initialize(id, publish_date, publisher, cover_state)
    super(id, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
