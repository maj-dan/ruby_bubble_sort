def bubble_sort(array)
  last_index = array.length - 1
  
  loop do
    has_swapped = false
    #need to iterate array.length - 1 times because
    #it's comparing pairs, else it will take an nil
    #value somewhere
    for index in 1..last_index do
      previous_index = index - 1

      if array[previous_index] > array[index]
        array[index], array[previous_index] = array[previous_index], array[index]
        has_swapped = true
      end
    end
    break unless has_swapped
  end

  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([4])