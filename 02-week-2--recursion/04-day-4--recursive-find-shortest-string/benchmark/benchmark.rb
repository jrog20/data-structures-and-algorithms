# iterative solution
def find_shortest_string(arr)
  arr.reduce do |shortest, string|
    string.length < shortest.length ? string : shortest
  end
end

# recursive solution
def find_shortest_string_recursive(arr)
  # base case
  return arr.first if arr.length == 1
  # recursive call
  result = find_shortest_string_recursive(arr[1..-1])
  # return the shortest
  arr.first.length <= result.length ? arr.first : result
end

def benchmark
  start_time = Time.now

  1000.times do 
    yield
  end

  (Time.now - start_time) / 1000
end

puts "Iterative Solution: #{benchmark { find_shortest_string(['lily', 'sunflower', '', 'dahlia', 'lilac']) }}"
puts "Recursive Solution: #{benchmark { find_shortest_string_recursive(['lily', 'sunflower', '', 'dahlia', 'lilac']) }}"
