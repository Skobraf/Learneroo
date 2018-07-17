class Node
	#your node code here
	attr_accessor :next, :data

    def initialize(data)
        @data = data
        @next = nil
    end
end

class LinkedList
	attr_accessor :head, :tail
	
	#setup head and tail
    def initialize
	    @head = nil
	    @tail = nil
	end

    def add(number)
        node = Node.new(number)
        
        if @head
            @tail.next = node
            @tail = node
        else
            @head = node
            @tail = node
        end
    end
    
    def get(index)
        variable = @head
        for i in 0...index do
            variable = variable.next
        end
        variable.data
    end

    def size
        if @head
            variable = @head
        else
            return 0
        end

        count = 1
        while variable.next
            count += 1
            variable = variable.next
        end
        count
    end

    def add_in(index, item)
        if index == 0
            item = Node.new(item)
            item.next = @head
            @head = item
        else
            node = getNode(index - 1)
            item = Node.new(item)
            item.next = node.next
            node.next = item
        end
    end

    def remove(index)
        value = getNode(index).data
        if index == 0
            if self.size == 1
                @tail = nil
            end
            @head = @head.next
            
        elsif index == self.size - 1
            node = getNode(index - 1)
            node.next = nil
            @tail = node
        else
            prev_node = getNode(index - 1)
            next_node = getNode(index + 1)
            prev_node.next = next_node
        end
        value
    end

    def print
        variable = @head
        for i in 0...self.size do
            if variable
                puts variable.data
            end
            variable = variable.next
        end
    end

    private

    def getNode(index)
        if index == 0
            return @head
        end

        node = @head
        for i in 0...index do
            node = node.next
        end
        node
    end
end


def do_stuff(a, b)
	if a == -9
		@list.add(b)
	elsif a == -6
		puts @list.get(b)
	end
end

#boilerplate code
t = gets.to_i
@list = LinkedList.new
for i in 1..t do
	a, b = gets.strip.split.map {|i| i.to_i}
	do_stuff(a, b)
end