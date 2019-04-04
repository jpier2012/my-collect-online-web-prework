require 'pry'

def my_collect array
  i = 0
  new_array = []
  while i < array.length
    yield i
    i += 1
  end
  binding.pry
  new_array
end

arr = [1,2,3,4,5]

puts my_collect(arr) {|i| i * 10}
