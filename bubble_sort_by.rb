def bubble_sort_by(array)
  return array if array.size <= 1
  swap = true
    while swap
      swap = false
      (array.length - 1).times do |x|
        if (yield(array[x], array[x+1]) > 0)
          array[x], array[x+1] = array[x+1], array[x]
          swap = true
        end
      end
    end
  array
end
p bubble_sort_by(['hi', 'hello', 'hey']) { |left, right|
  left.length - right.length
  }