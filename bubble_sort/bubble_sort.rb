require 'debug'

class Sort 

  def swap(arr, index, next_index)
    front_section = arr[0...index]
    first_el = [arr[index]]
    second_el = [arr[next_index]]
    back_section = arr[next_index + 1..]

    front_section + second_el + first_el + back_section
  end

  def single_pass(arr)
    result = arr
    is_sorted = true

    arr[0...-1].each_with_index do |current_el, index|
      next_index = index + 1
      next_el = arr[next_index]
      
      if next_el < current_el
        is_sorted = false
        result = swap(result, index, next_index)
      end
    end
    [result, is_sorted]
  end

  def bubble_sort(arr)
    return arr if arr.length == 1

    result, is_sorted = single_pass(arr)
    is_sorted ? result : bubble_sort(result)
  end
end