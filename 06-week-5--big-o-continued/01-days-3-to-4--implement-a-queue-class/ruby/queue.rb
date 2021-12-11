class Queue
  attr_reader :limit

  def initialize
    @queue = []
    # this is an arbitrary (low) value to make testing easier
    @limit = 10
  end

  # add item to rear of queue if not full
  # if full, throw error
  def enqueue(item)
    raise "Queue is full." if isFull?
    @queue.push(item)
  end

  # remove item from front of queue and return it
  def dequeue
    @queue.shift
  end

  # return item at front of queue without removing it
  def peek
    @queue.first
  end

  # return true if queue is empty, otherwise false
  def isEmpty?
    @queue.empty?
  end

  # return true if queue is full, otherwise false
  def isFull?
    size == @limit
  end

  # return number of items in queue
  def size
    @queue.length
  end

  # return -1 if item not in queue, 
  # otherwise integer representing how far it is from the front

    # queue = 1, 2, 3, 4, 5 <- rear

    # queue.search(5) => 4
    # queue.search(4) => 3
    # queue.search(6) => -1

  def search(target)
    # @queue.each_with_index do |item, idx|
    #   return idx if item == target
    # end
    # -1
    # REFACTORED
    @queue.index(target) || -1
  end

  # print contents of queue: do not return the queue itself!
  def print
    puts @queue.join(', ')
  end
end

if __FILE__ == $PROGRAM_NAME
  queue = Queue.new

  (0..5).each do |num|
    queue.enqueue(num)
  end

  queue.print

  puts "peek: #{queue.peek}"
  puts "Is empty?: #{queue.isEmpty?}"
  puts "Is full?: #{queue.isFull?}"
  puts "size: #{queue.size}"
  puts "dequeue: #{queue.dequeue}"

  queue.print

end

