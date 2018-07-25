def do_stuff(a, b)
	#your code here
	c = 0
	for i in 1..3 do
		if i != a && i != b
			c = i
			print "#{a} -> #{c} #{a}-> #{b} #{c} -> #{b}" 
		end
	end
	puts ""
end


#boilerplate code
t = gets.to_i
for i in 1..t do
	a, b = gets.strip.split.map {|i| i.to_i}
	do_stuff(a, b)
end