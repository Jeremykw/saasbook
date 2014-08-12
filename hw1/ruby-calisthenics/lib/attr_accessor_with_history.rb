class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    self.class_eval %Q{

      def #{attr_name}=(val)
        if !defined?@#{attr_name}
          @#{attr_name}_hisory ||= [nil]          
          if defined? @last_val
            @#{attr_name}_hisory << @last_val
          end
          @#{attr_name} = val
          puts @#{attr_name}.inspect
          puts @#{attr_name}_hisory.inspect
        else          
          @#{attr_name}_hisory << val 
          puts @#{attr_name}.inspect
          puts @#{attr_name}_hisory.inspect
        end
        def #{attr_name}_history
          @#{attr_name}_history
        end
        @last_val = val
      end		      
    }
  end
end
