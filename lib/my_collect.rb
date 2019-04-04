def my_collect array
  i = 0
  new_array = []
  while i < array.length
    new_array << yield array[i]
    i += 1
  end
  new_array
end

arr = *(1..10)

my_collect(array) {|i| i * 10}
