class Stack
  attr_accessor :min, :min_stack, :stack
  def initialize
    @stack = Array.new
    @min = nil
    @min_stack = Array.new
  end

  def push(value)
    @stack.push(value)

    #update min from value
    if @min.nil?
      @min = value
      @min_stack.push(@min)
    else
      if value < @min
        @min = value
        @min_stack.push(@min)
      end
    end
    
  end

  def pop
    popped = @stack.pop
    
    #update min
    if popped == @min_stack[-1]
      @min_stack.pop
      @min = @min_stack[-1]
    end
  end
end

def do_stuff(ar)
  ar.each do |value|
    if value == -1
      @stack.pop
    else
      @stack.push(value)
      print @stack.min
    end
  end
  puts ""
  @stack = Stack.new
end

t = gets.to_i
@stack = Stack.new
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end