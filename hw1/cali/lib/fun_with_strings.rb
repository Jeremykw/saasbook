#test ing

module FunWithStrings
  def palindrome?
    p = self.gsub(/[^a-zA-Z]/, "")
    p.downcase == p.downcase.reverse
  end
  def count_words
    
    input = self.downcase.strip.split(" ")
    #input.each do { |word| word.gsub!(/[^a-zA-Z]/, "")}
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
    #puts output
    return output
  end
  def anagram_groups
    # your code here
  end
end


# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

