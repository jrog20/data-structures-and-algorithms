# recursive solution
def selection_sort_recursive(arr)
  return [] if arr.length == 0

  min = arr.min
  idx = arr.index(min)
  arr.delete_at(idx)

  sorted = selection_sort_recursive(arr)
  sorted.unshift(min)
end

# iterative solution
def selection_sort(arr)
  sorted = []
  # iterate through the entire array to find the minimum element
  # push the minimum element onto the new sorted array
  # delete the element at the minimum element index 
  # repeat until the array is empty
  until arr.length == 0
    min = arr.min
    idx = arr.index(min)
    sorted << min
    arr.delete_at(idx)
  end
  sorted
end

def benchmark
  start_time = Time.now

  1000.times do 
    yield
  end

  (Time.now - start_time) / 1000
end

puts "Iterative Solution: #{benchmark { selection_sort([2, 3, 4, 1, 4, 56, -2, 20]) }}"
puts "Recursive Solution: #{benchmark { selection_sort_recursive([2, 3, 4, 1, 4, 56, -2, 20]) }}"