def bad_two_sum?(arr, target_sum)
  pairs = []
  arr.each_with_index do |num1, i|
    arr.each_with_index do |num2, j|
      if num1 + num2 == target_sum && i != j
        pairs << [num1 + num2]
      end
    end
  end
  pairs.any? { |sums| sums == target_sum }
end

#time complexity: quadratic

#merge sort => bsearch on result
#finding x & y

def okay_two_sum?(arr, target_sum)


end

def four_sum?(arr, target_sum)
  bank = {}   [ "0" => true, "1" => true ]
  arr.each do |ele|
    counter_ele = target_sum - ele
    if bank[counter_ele]
      return true
    else
      bank[ele] = true
    end
  end
  return false
end

arr = [0, 1, 5, 7]
four_sum?(arr, 6) # => should be true
four_sum?(arr, 10) # => should be false
