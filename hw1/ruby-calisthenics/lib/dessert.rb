class Dessert

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    @calories < 200 && delicious?
  end
  def delicious?
    return 1 == 1
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    unless @flavor == "licorice" return 1 == 1
  end
end
