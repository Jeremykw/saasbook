class Class
  def self.attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    
      class_eval %Q{

<<<<<<< HEAD
      def #{attr_name}=(val)
        @#{attr_name}_history ||= Array.new
        @#{attr_name}_history << val
        
        @#{attr_name} = val
      end		      
    }
=======
        def #{attr_name}= (val)
         @@#{attr_name}_history ||= [nil]
         @@#{attr_name}_history[1] = val
         @#{attr_name} = val
         
          
        end
      
      }

>>>>>>> c8689b8c26d5be84f30479592bcb70fbe71d6c95
  end
end

