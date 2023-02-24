#time complexity: quadratic
def my_min(list)
  min = nil
  list.each do |num|
    min = num if list.all? { |num2| num <= num2 }
  end
  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

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
p my_min(list)
