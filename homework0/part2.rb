def hello(name)
	puts "hello " + name
end

def starts_with_constant?(s)
	s.downcase!
	puts s[0]
	if /[aeiou]/.match(s[0])
		return false
	else	
		return true
	end
end
=begin
def  binary_multiple_of_4?(s)
	???
	???	
end

# Test binary_multiple_of_4?(s)
puts "binary_multiple_of_4?('Eat my shorts')"
puts binary_multiple_of_4?('Eat my shorts')


# Test starts_with_constant?(s)
puts "starts_with_constant?('aeiou') = false"
puts starts_with_constant?('aeiou')

puts "starts_with_constant?('Alligator Soupe') = false"
puts starts_with_constant?('Alligator Soupe')

puts "starts_with_constant?('Desk') = true"
puts starts_with_constant?('Desk')

puts "starts_with_constant?('smells like sausage') = true"
puts starts_with_constant?('smells like sausage')


# Test hello(name)
puts 'hello(jeremy)'
hello('jeremy') == 'hello jeremy'
=end
