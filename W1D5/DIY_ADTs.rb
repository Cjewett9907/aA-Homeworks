class Stack
    attr_accessor :stack
    def initialize
      @stack = []
    end

    def push(el)
      stack.push(el)
    end

    def pop
      stack.pop
    end

    def peek
      stack.inspect[1]
    end
  end

stack = Stack.new

class Queue
    attr_accessor :que
    def initialize
      @que = []
    end

    def enqueue(el)
      que.push(el)
    end

    def dequeue
      que.shift
    end

    def peek
      que.inspect
    end
  end

  class Map
    #my_map = [[k1, v1], [k2, v2], [k3, v2], ...]
      attr_accessor :map
      def initialize
        @map = []
      end

      def set(key, value)
        map.push([key, value])
      end

      def get(key)
          #map[map.index(key)][0] == key
          map.each do |el|
            if el[0] == key
              return el[1]
            end
          end
          nil
      end

      def delete(key)
        map.each do |el|
          if el[0] == key
            map.delete(el)
          end
        end
        nil
      end

      def show
        p map
      end
    end
