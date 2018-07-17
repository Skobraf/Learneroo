def do_stuff(ar)
    #put code here
    ar.each do |i|
    	if i == -1
    		print @arr.pop
    	else
    		@arr.push(i)
    	end
    end
    puts ""
end

t = gets.to_i
@arr = Array.new
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end