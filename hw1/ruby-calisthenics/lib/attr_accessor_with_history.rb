class Class
  def self.attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    self.class_eval %Q{

      def #{attr_name}=(val)
        @#{attr_name}_history ||= Array.new
        @#{attr_name}_history << val
        
        @#{attr_name} = val
      end		      
    }
  end
end
