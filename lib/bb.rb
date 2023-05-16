require './linkedlist_bb'
class BeatBox
    attr_reader :list
  
    def initialize
      @list = LinkedList.new
    end
  
    def append(sounds)
      strings = sounds.split(' ')
      strings.each do |string|
        list.append(string)
      end
      sounds
    end
  
    def beats_count
      list.node_count
    end
  
    def play
      `say -r 500 -v Boing #{list.to_string}`
    end
  end