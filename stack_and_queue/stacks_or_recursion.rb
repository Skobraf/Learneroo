def do_stuff(ar)
	#put code here
	# if we were using stack, we should only 
	# use push and pop.
	nodes = 1
	level = 0
	until ar.empty?
		nodes.times do
			ar.pop
		end
		nodes = nodes * 2
		level += 1
	end
	
	puts level
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end