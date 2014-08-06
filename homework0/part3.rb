# define class BookInStock
class BookInStock
	def initialize(isbn, price)			
		@isbn = isbn
		@price = price
	end
	def isbn
		@isbn
	end
	attr_accessor :isbn, :price
	def price_as_string
	  dec = @price - @price.to_i
	  if dec > 0 # if decimal
	    if @price.to_s.split(".").last.length ==1 # if one decimal place
	      @price = "$#{@price}0"
	    else
	      @price = "$#{@price.round(2)}"
	    end
	  else
		  @price = "$#{@price.to_i}.00"  #if int
	  end

	end
end

# test BookInStock

# To Currancy
puts "33 = $33.00"
test2 = BookInStock::new(1234, 33)
puts test2.price_as_string
puts test2.price == "$33.00"

puts "33.0 = $33.00"
test2 = BookInStock::new(1234, 33.0)
puts test2.price_as_string
puts test2.price == "$33.00"

puts "33.00 = $33.00"
test2 = BookInStock::new(1234, 33.00)
puts test2.price_as_string
puts test2.price == "$33.00"

puts "33.3 = $33.30"
test2 = BookInStock::new(1234, 33.3)
puts test2.price_as_string
puts test2.price == "$33.30"

puts "33.456789 = $33.46"
test2 = BookInStock::new(1234, 33.456789)
puts test2.price_as_string
puts test2.price == "$33.46"
=begin
puts "33.33 = $33.33"
test2 = BookInStock::new(1234, 33.33)
puts test2.price_as_string
puts test2.price == "$33.33"

puts "33.00 = $33.333"
test2 = BookInStock::new(1234, 33.333)
puts test2.price_as_string
puts test2.price == "$33.33"



# Getter and Setters
puts "test1 = BookInStock::new(1234, 99.55) == true"
puts test1 = BookInStock::new(1234, 99.55)
puts test1.isbn == 1234
puts test1.price == 99.55

puts 'test1.isbn = 2345'
test1.isbn = 2345
puts test1.isbn == 2345

puts 'test1.price = 26.23'
test1.price = 26.23
puts test1.price == 26.23

puts 'test2 = BookInStock::new(1234, -7.00)'
test2 = BookInStock::new(1234, -7.00)
=end
