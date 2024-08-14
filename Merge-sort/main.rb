require 'pry-byebug'

def merge(arr)
  i_a, i_b = 0, 0
  a_arr, b_arr = arr[0], arr[1]
  new_arr = []

  while i_a < a_arr.size && i_b < b_arr.size
    "#{a_arr[i_a]} --- #{b_arr[i_b]}"

    if a_arr[i_a] < b_arr[i_b]
      new_arr << a_arr[i_a]
      i_a += 1
    elsif b_arr[i_b] < a_arr[i_a]
      new_arr << b_arr[i_b]
      i_b += 1
    end
  end

  if b_arr.size > i_b
    b_arr[i_b..].each do |num|
      new_arr << num
    end
  end
  if a_arr.size > i_a
    a_arr[i_a..].each do |num|
      new_arr << num
    end
  end
  new_arr
end

def merge_sort(arr)
  if arr.size == 1
    return arr
  else
    a = merge_sort(arr[0...arr.size/2])
    b = merge_sort(arr[arr.size/2..])
    merge([a, b])
  end
end

# p merge([[1, 4, 5], [2, 3, 88]])
p merge_sort([2, 1, 33, 3, 9, 44])