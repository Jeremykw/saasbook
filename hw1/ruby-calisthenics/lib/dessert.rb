class Dessert

  def initialize(name, calories)
    @name
    @calories
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    @calories < 200 || delicious?
  end
  def delicious?
    # your code here
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
  end
end
