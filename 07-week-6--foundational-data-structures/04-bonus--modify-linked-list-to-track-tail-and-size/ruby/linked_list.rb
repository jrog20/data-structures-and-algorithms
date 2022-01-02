class LinkedList
  attr_accessor :head 
  attr_reader :size, :tail

  def initialize(head = nil)
    @head = head
    @tail = tail
    @size = 0
    set_size_and_tail
  end

  def set_size_and_tail
    @size = 0

    iterate do |node|
      @tail = node
      update_size('+')
    end
  end

  def update_size(operation)
    operation === '+' ? @size += 1 : @size -= 1
  end

  def iterate
    count = 0
    temp = @head

    until temp.nil?
      yield(temp, count)      
      temp = temp.next_node
      count += 1
    end

    @head
  end

  def print
    iterate { |node| puts node.value }
  end

  def find(target)
    iterate do |node|
      return node if node.value == target
    end

    nil
  end

  def add_first(node)
    if @head.nil?
      @tail = node
    end

    node.next_node = @head
    @head = node

    update_size('+')
  end

  def add_last(node)
    if @head.nil?
      add_first(node)
      return
    end

    @tail.next_node = node
    @tail = node
    update_size('+')
  end

  def remove_first
    old_head = @head

    unless @head.nil?
      @head = @head.next_node
      update_size('-')
    end
    
    if @head.nil?
      @tail = nil
    end

    old_head
  end

  def remove_last
    return remove_first if @head.nil? || @head.next_node.nil?

    update_size('-')

    iterate do |node|
      if node.next_node.next_node.nil?
        old_tail = node.next_node
        node.next_node = nil
        @tail = node
        return old_tail
      end
    end
  end

  def replace(idx, node)
    if idx.zero?
      remove_first
      add_first(node)
      return node
    end

    iterate do |curr_node, count|
      if count == idx - 1
        node.next_node = curr_node.next_node.next_node
        curr_node.next_node = node
        @tail = node if node.next_node.nil?
        return node
      end
    end
  end

  def insert(idx, node)
    if idx.zero?
      add_first(node)
      return
    end

    update_size("+")

    iterate do |curr_node, count|
      if count == idx - 1
        old_next = curr_node.next_node
        curr_node.next_node = node
        node.next_node = old_next
        @tail = node if node.next_node.nil?
        return
      end
    end
  end

  def remove(idx)
    if idx.zero?
      return remove_first
    end

    update_size("-")

    iterate do |node, count|
      if count == idx - 1
        old_node = node.next_node
        node.next_node = node.next_node.next_node
        @tail = node if node.next_node.nil?
        return old_node
      end
    end
  end

  def clear
    @head = nil
    @tail = nil
    @size = 0
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

if __FILE__ == $PROGRAM_NAME
  head = Node.new('one', Node.new('two', Node.new('three', Node.new('four'))))
  list = LinkedList.new(head)
  empty_list = LinkedList.new
end

