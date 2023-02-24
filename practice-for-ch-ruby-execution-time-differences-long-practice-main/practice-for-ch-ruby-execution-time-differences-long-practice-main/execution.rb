#time complexity: quadratic
def my_min(list)
  min = nil
  list.each do |num|
    min = num if list.all? { |num2| num <= num2 }
  end
  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

#time complexity: linear
def my_min(list)
  min = nil
  list.each do |num|
    if min.nil? || num < min
      min = num
    end
  end
  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)


#quadratic
# def largest_contiguous_subsum(list)
#   subs = []
#   list.each.with_index do |ele, idx1|
#     (idx1..list.length - 1).each do |idx2|
#       subs << list[idx1..idx2]
#     end
#   end
#   sums = subs.map { |sub| sub.inject(&:+) }
#   sums.max
# end


def largest_contiguous_subsum(arr)
  largest_sum = arr.first
  current_sum = arr.first
  #how to find index pairs without inner loops?
  #slicing is linear right?
  #current_sum + arr[i] - if this is bigger than largest sum then replace
  (1..arr.length - 1).each do |idx|
    current_sum += arr[idx]
    largest_sum = current_sum if current_sum > largest_sum

  end
end

list = [5, 3, -7]
p largest_contiguous_subsum(list)

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)

list = [-5, -1, -3]
p largest_contiguous_subsum(list)