class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(new_string)
    @head = Node.new(new_string)
  end

  def count
    string = []
    string << @head
    string.count
  end

  def to_string
    "The #{head.surname} Family"
  end


end
