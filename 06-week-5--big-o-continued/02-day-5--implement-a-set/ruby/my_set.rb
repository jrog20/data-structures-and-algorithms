class MySet 
  attr_reader :data
  
  def initialize(iterable = nil)
    # throw an error if called with anything other than string, array or nothing
    raise "You must initiate with an empty set, a string, or an array" unless 
      iterable.nil? || iterable.kind_of?(String) || iterable.kind_of?(Array)
    
    @data = {}
    
    # if an iterable is provided only its unique values should be in data
    # strings and arrays will need to be broken down by their elements/characters
    # Use a value of `true` for each key: `{ dog: true }`.
    unless iterable.nil?
      items = iterable.kind_of?(String) ? iterable.split("") : iterable
      items.each { |item| @data[item] = true }
    end
  end

  # return number of elements in MySet
  def size
    entries.length
  end

  # add an item to MySet as is
  # return the MySet instance
  # Use a value of `true` for each key: `{ dog: true }`.
  def add(item)
    @data[item] = true
    self
  end

  # delete an item from MySet
  # return true if successful otherwise false
  def delete(item)
    !!@data.delete(item)
  end

  # return true if in MySet, otherwise false
  def has(item)
    !!@data[item]
  end

  # return data as an array
  def entries
    @data.keys
  end
end

if __FILE__ == $PROGRAM_NAME
  mySet = MySet.new('peri')
  puts "Created with string peri: #{mySet.data}"
  puts "Add 'winkle': #{mySet.add('winkle')}"
  puts mySet.data
  puts mySet.add('p')
  puts mySet.data
  puts mySet.add('s')
  puts mySet.data
  puts mySet.entries
  puts mySet.size
end


