require 'pry'

def my_collect array
  i = 0
  new_array = []
  while i < array.length
    yield i

    binding.pry
    i += 1
  end

end

arr = [1,2,3,4,5]

puts my_collect(arr) {|i| i * 10}
