def my_collect array
  i = 0
  new_array = []
  while i < array.length
    yield array[i]
    new_array[i] = array[i]
    i += 1
  end
  new_array
end

arr = *(1..10)

puts my_collect(arr) {|i| i * 10}
