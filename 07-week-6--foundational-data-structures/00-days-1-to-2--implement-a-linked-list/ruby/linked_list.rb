class LinkedList
  attr_accessor :head

  # ```
  # node = new Node()
  # list = new LinkedList(node)
  # list.head
  # => Instance of Node

  # emptyList = new LinkedList()
  # list.head
  # => null or nil
  # ```

  def initialize(head = nil)
    @head = head
  end

  # Yield is a Ruby keyword that calls a block when you use it.
  def iterate
    count = 0
    temp = @head
    until temp.nil?
      # The code inside the block will replace the yield keyword in the method definition
      yield(temp, count)
      temp = temp.next_node
      count += 1
    end
    @head
  end

  # print each node's value on its own line
  def print
    iterate { |node| puts node.value } 
  end

  # find the node with the target value and return it
  # if not found return nil
  def find(target)
    iterate do |node|
      return node if node.value == target
    end
    nil
  end

  # add the node to the start of the list, no nodes should be removed
  def add_first(node)
    # make the current head == the next node
    node.next_node = @head
    # make this new node == the head
    @head = node
  end

  # add node to end of list, no nodes should be removed
  def add_last(node)
    # check to see if there are any nodes, if not, this node == head; return to end
    if @head.nil?
      @head = node
      return
    end
    # iterate through the nodes until we find the last node. Add this node as the next node
    iterate do |current_node|
      if current_node.next_node.nil?
        current_node.next_node = node
        return
      end
    end
  end

  # remove the first Node in the list and update head
  # and return the removed node
  def remove_first
    # remove the first Node
    old_head = @head
    # update head
    @head = @head.next_node unless @head.nil?
    # return the removed node
    old_head
  end

  # remove the tail node
  def remove_last
    # check to see if there is more than one node, if not, remove first
    return remove_first if @head.nil? || @head.next_node.nil?
    # iterate through the nodes until you find the tail
    iterate do |node|
      if node.next_node.next_node.nil?
        old_tail = node.next_node
        node.next_node = nil
        # return the node that was just removed
        return old_tail
      end
    end
  end

  # replace the node at the given index with the given node
  def replace(idx, node)
    # if the given index is the first index, add to front
    if idx.zero?
      remove_first
      add_first(node)
      return node
    end

    iterate do |curr_node, count|
      if count == idx - 1
        node.next_node = curr_node.next_node.next_node
        curr_node.next_node = node
        return node
      end
    end
  end

  # insert the node at the given index
  # no existing nodes should be removed or replaced
  def insert(idx, node)
    # if the given index is the first index, add to front
    if idx.zero?
      add_first(node)
      return
    end

    iterate do |curr_node, count|
      if count == idx - 1
        old_next = curr_node.next_node
        curr_node.next_node = node
        node.next_node = old_next
        return
      end
    end
  end

  # remove the node at the given index, and return it
  def remove(idx)
    if idx.zero?
      return remove_first
    end

    iterate do |node, count|
      if count == idx - 1
        old_node = node.next_node
        node.next_node = node.next_node.next_node
        return old_node
      end
    end
  end

  def clear
    @head = nil
  end

end

# When instantiating a new `Node`, the arguments in order should be: `value`, `next`.

# ```
# node = new Node()
# node.value
# => null or nil
# node.next
# => null or nil

# node = new Node('hi', new Node('bye'))
# node.value
# => 'hi'
# node.next
# => Instance of Node with value of 'bye'
# ```

class Node
  # next is a reserved word in Ruby, so we'll use next_node instead 
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

if __FILE__ == $PROGRAM_NAME
  head = Node.new('one', Node.new('two', Node.new('three', Node.new('four'))))
  list = LinkedList.new(head)
  puts list.print
end
