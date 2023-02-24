#time complexity: quadratic
def my_min(list)
  min = nil
  list.each do |num|
    min = num if list.all? { |num2| num <= num2 }
  end
  min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
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

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
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


# def largest_contiguous_subsum(arr)
#   largest_sum = arr.first
#   current_sum = arr.first
#   #how to find index pairs without inner loops?
#   #slicing is linear right?
#   #current_sum + arr[i] - if this is bigger than largest sum then replace
#   (1..arr.length - 1).each do |idx|
#     current_sum += arr[idx]
#     largest_sum = current_sum if current_sum > largest_sum

#   end
# end

def largest_contiguous_subsum(arr)
  global_sum = arr.first
  local_sum = arr.first
  (1...arr.length).each do |i|
    local_sum = 0 if local_sum < 0
    local_sum += arr[i]
    global_sum = local_sum if global_sum < local_sum
  end
  global_sum
end

list = [2, 3, -6, 7, -6, 7]
global = 2
local = 2
local 2 += 3 = 5
global = 5

i=2; -6
global = 5
local = 0 + -6 = -6
global = 5

i=3; 7
local = 0 + 7 = 7
global = 7

i=4, -6
local = 7 + -6 = 1
global = 7

i=5, 7
local = 1 + 7
global = 8 



list = [5, 3, -7]
p largest_contiguous_subsum(list)  #8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)  #8

list = [-5, -1, -3]
p largest_contiguous_subsum(list)  #-1
