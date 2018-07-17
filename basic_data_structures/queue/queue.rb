def do_stuff(ar)
	ar.each do |x|
		if x == -1 
			if @arr.empty?
				 print '-1'
			else
				print @arr.shift
			end
		else
			@arr.push(x)
		end
	end
	puts ""
	@arr = Array.new
end

t = gets.to_i
@arr = Array.new
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end