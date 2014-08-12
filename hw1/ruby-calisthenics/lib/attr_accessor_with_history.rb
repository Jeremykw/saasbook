class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    @history_variable = {'foo' => attr_name+"_history"}
    puts value
    
    class_eval %Q{

      if !defined hist
        @attr_name+"_history"[]
        @attr_name+"_history" << value
      else
        @attr_name+"_history" << value
      end
      puts @attr_name+"_history".inspect
   
    }
  end
end

git log

