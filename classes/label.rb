class Label

    attr_reader: id, :title, :color
    attr_accessor: item 

    def initialize(id, title, color, item)
        @id = Random.rand(1..1000)
        @title = title
        @color = color
        @item = item
    end
end
