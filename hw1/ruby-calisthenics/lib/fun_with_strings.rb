# Testing HW1 Merge
module FunWithStrings
  def palindrome?
    p = self.gsub(/[^a-zA-Z]/, "")
    p.downcase == p.downcase.reverse
  end
  def count_words
    input = self.downcase.strip.split(" ")    
    input.each do |word| 
      word.gsub!(/[^a-zA-Z]/, "")
    end
    input = input - ["", nil]
    test = input.dup
    input.uniq!
    output = Hash.new
    input.each do |word|
      count = 0
      test.each do|comp|
        if word == comp; count += 1; end  
      end        
      output[word] = count
    end
    return output
  end
  
  def anagram_groups
    puts "self: " + self
    
    # seperate string into arrary
    input = self.dup.strip.split(" ")
    
    # define variables
    test = Hash.new
    output = []
    
    if input == ["", nil]; return [""]; end
    
    # Creat hash test with words as key and alpha sorted letters as value
    input.each do |word| 
      word.gsub!(/[^a-zA-Z]/, "") # remove all but letters
      sorted_word = word.chars.sort.join
      test[sorted_word] = test[sorted_word] || [] # seperate into chars-sort-rejoin into word
      test[sorted_word] << word
    end    
    return test.values    
  end
end


# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

puts "scream c!ars for fo'ur scar creams".anagram_groups
