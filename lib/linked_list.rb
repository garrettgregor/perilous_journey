require 'node'

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
      current_node = @head.next_node
      current_node = @head.next_node until current_node.next_node.nil?
      current_node.next_node = Node.new(surname)
    end
  end

  def prepend(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      previous_head = @head
      @head = Node.new(surname)
      @head.next_node = previous_head
    end
  end

  def insert(index_position, surname)
    if index_position.zero? && count >= 0
      prepend(surname)
    else
      previous_node = nil
      current_node = @head
      index = 0
      until index == index_position
        index += 1
        previous_node = current_node
        current_node = current_node.next_node
      end
      previous_node.next_node = Node.new(surname)
      previous_node.next_node.next_node = current_node
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

      until current_node.next_node.nil?
        current_node = current_node.next_node

        count += 1
      end

      count
    end
  end

  def to_string
    if count == 0
      'No families'
    elsif count == 1
      "The #{@head.surname} family"
    else
      sentence = "The #{@head.surname} family"
      current_node = @head

      until current_node.next_node.nil?
        current_node = current_node.next_node
        added_string = ", followed by the #{current_node.surname} family"
        sentence += added_string
      end

      sentence
    end
  end
end
