class Node
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
       @data = Node.new(value, @data) 
       # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        if @data == nil 
            print "this is nil"
        # I RETURN A VALUE
        
        else
            print "#{@data.value} -->\n"
            @data = @data.next_node # @data = current position, @data.next_node chooses new position.
        end
    end

end

    
def reverse_list(list)
    stack = Stack.new
    while list
        # ADD CODE HERE
        stack.push(list.value)
        list = list.next_node
    end
    return stack.data
    # ADD CODE HERE
end

def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
end


  
  node1 = Node.new(37)
  node2 = Node.new(99, node1)
  node3 = Node.new(12, node2)

print_values(node3)
new_list = reverse_list(node3)
print_values(new_list)


