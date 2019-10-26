class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
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

  def reverse_list(list, previous=nil)
    last_node = list.next_node
    list.next_node = previous
    if last_node
        reverse_list(last_node, list)
    else
        list
    end
end

class Stack < LinkedListNode
    attr_reader :first

    def initialize
      @first = nil
    end

    def push(value)
      @first = LinkedListNode.new(value, @first)
    end

    def pop
      if is_empty?
        puts "Stack is empty"
      else
        value = @first.value
        @first = @first.next_node
        value
      end
    end

    def is_empty?
      @first.nil?
    end
  end
  
  node1 = LinkedListNode.new(37)
  node2 = LinkedListNode.new(99, node1)
  node3 = LinkedListNode.new(12, node2)
  
  print_values(node3)

  puts "------"

  revlist = reverse_list(node3)

  print_values(revlist)

  stack = Stack.new
  stack.push(1)
  stack.push(2)

  puts stack.pop
  puts stack.pop
  puts stack.pop