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
end

# test BookInStock
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

