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

    def node_count
        @string_arr.count
    end

    def to_string
        @string_arr.join(' ')
    end

    def prepend(string)
        new_node = Node.new(string, @head)
        @head= new_node
        @string_arr.prepend(string)
    end

    def node_at_index(node, target_index, starting_index=0)
        if target_index == starting_index
            node
        else
        node_at_index(node.next_node, target_index, starting_index += 1)
        end
    end
    
    def insert_after(index, string)
        @string_arr.insert(index,string)
        
        string = Node.new(string)
        node_index_down= node_at_index(@head, index - 1)
        node_index_up = node_at_index(@head, index)
        node_index_down.add_next_node(string)
        string.add_next_node(node_index_up)
    end

    def find(index, number_returned)
        @found = []
        until @found.length == number_returned
        @found << @string_arr.fetch(index)
        index += 1
        end
        @found
    end

    def includes?(string)
        @string_arr.include?(string) 
    end

    def pop 
        old_last = last_node(@head)
        new_last = node_at_index(@head, node_count - 2)
        new_last.delete_node
        old_last.data
        @string_arr.delete_at(-1)
    end
end 