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