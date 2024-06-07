require "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head.nil?
      @head = Node.new(surname)
    elsif @head.next_node.nil?
      @head.next_node = Node.new(surname)
    else
      @head = @head.next_node until @head.next_node.tail?
      @head = Node.new(surname)
    end
  end

  def count
    if @head.nil?
      0
    elsif @head.next_node.nil?
      1
    else
      count = 1
      current_node = @head

      until @head.next_node.nil?
        @head = current_node.next_node

        current_node = current_node.next_node
        count += 1
      end

      count
    end
  end

  def to_string
    if @head.nil?
      "No families"
    elsif @head.next_node.nil?
      "The #{@head.surname} family"
    end
  end
end
