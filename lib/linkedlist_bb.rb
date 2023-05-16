class LinkedList
    attr_reader :head
    def initialize
        @head = nil
        @string_arr = []
    end

    def last_node(start)
        head = start
        if start.next_node == nil
            return start
        else
            last_node(start.next_node)
        end
    end
        
    def append(string)
        
        if  @head == nil
            @head = Node.new(string)
        else
            @head = @head
            last_node(head).add_next_node(Node.new(string))
        end
        @string_arr << string
        string
    end