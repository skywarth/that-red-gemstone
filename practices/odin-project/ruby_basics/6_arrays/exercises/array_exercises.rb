def nil_array(number)
  Array.new(number)
end

def first_element(array)
  array.first
end

def third_element(array)
  array[2]
end

def last_three_elements(array)
  return array.last(3)


  last_index=array.length-1

  array.select.with_index do |x,index|
    index>=last_index-2
  end
end

def add_element(array)
  array.push(array)
end

def remove_last_element(array)
  array.pop

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array
end

def remove_first_three_elements(array)
  3.times do
    array.shift
  end
  # Step 1: remove the first three elements

  # Step 2: return the array (because Step 1 returns the values of the elements removed)

  return array
end

def array_concatenation(original, additional)
  original+additional
  # return an array adding the original and additional array together
end

def array_difference(original, comparison)
  original-comparison
  # return an array of elements from the original array that are not in the comparison array
end

def empty_array?(array)
  array.empty?
  # return true if the array is empty
end

def reverse(array)
  array.reverse
  # return the reverse of the array
end

def array_length(array)
  array.length
  # return the length of the array
end

def include?(array, value)
  array.include?(value)
  # return true if the array includes the value
end

def join(array, separator)
  array.join(separator)
  # return the result of joining the array with the separator
end
