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

  # print each node's value on its own line
  # use your iterate method to be DRY! Don't get caught in the code rain, brrr.
  def print
  end

  # find the node with the target value and return it
  # if not found return nil, use your iterate method to be DRY!
  def find(target)
  end

  # add the node to the start of the list, no nodes should be removed
  def add_first(node)
  end

  # add node to end of list, no nodes should be removed
  # you may wish to use the iterate method
  def add_last(node)
  end

  # remove the first Node in the list and update head
  # and return the removed node
  def remove_first
  end

  # remove the tail node, iterate may be helpful
  # return the node you just removed
  def remove_last
  end

  # replace the node at the given index with the given node
  def replace(idx, node)
  end

  # insert the node at the given index
  # no existing nodes should be removed or replaced
  def insert(idx, node)
  end

  # remove the node at the given index, and return it
  def remove(idx)
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
  head = Node.new('hi again', Node.new('but why?'))
  list = LinkedList.new(head)
  puts list.head.value
  puts list.head.next_node.value
  puts list.head.next_node.next_node
end
