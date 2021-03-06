def sum (array)
	return 0 if array == []
	total = 0	
	for num in array
		total += num
	end
	return total
end

def sum_2_max(array)
	return 0 if array == []
	array.sort!
	print array
	if array.length == 1
		return array[0] 
	else
		return array[array.length - 1] + array [array.length - 2]
	end
	# return total
end

def sum_to_n(array, num)
	return false if array == []
	return false if array.length <= 1
	print array
	for i in 0...array.length
		for j in 0...array.length
			if i != j
				return true if array[i] + array[j] = num
			end			
		end
	end
	# return total
end

# Test sum_to_n
puts "sum_to_n([], 10) == false"
puts sum_to_n([], 10) == false

puts "sum_to_n([5], 10) == false"
puts sum_to_n([5], 10) == false

puts "sum_to_n([5, 5], 10) == true"
puts sum_to_n([5, 5], 10) == true

puts "sum_to_n([5, 11, 5, 4], 10) == true"
puts sum_to_n([5, 11, 5, 4], 10) == true

puts "sum_to_n([5, 11, 5, 4], 15) == true"
puts sum_to_n([5, 11, 5, 4], 15) == true

puts "sum_to_n([5, 11, 55, 77, 999, 4], 1176) == true"
puts sum_to_n([5, 11, 55, 77, 999, 4], 1176) == true


# Test sum()
puts "sum([]) == 0"
puts sum([]) == 0

puts "sum([1,2,3]) == 6"
puts sum([1,2,3]) == 6

# Test sum_2_max
puts 'sum_2_max([]) == 0'
puts sum_2_max([]) == 0

puts 'sum_2_max([6]) == 6'
puts sum_2_max([6]) == 6

puts 'sum_2_max([6, 1]) == 7'
puts sum_2_max([6, 1]) == 7

puts 'sum_2_max([6, 1, 3]) == 9'
puts sum_2_max([6, 1, 3]) == 9

puts 'sum_2_max([12, 6, 1, 3]) == 18'
puts sum_2_max([12, 6, 1, 3]) == 18

puts 'sum_2_max([12, 6, 1, 3, 8]) == 20'
puts sum_2_max([12, 6, 1, 3, 8]) == 20


