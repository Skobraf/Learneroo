def do_stuff(a)
  mid = a / 2
  sqrt(0, a, mid, a)
end

def sqrt(min, max, mid, a)				
	square = mid * mid

	if square == a
		return mid
	elsif square > a
		max = mid
		mid = min + (max - min) / 2
		return sqrt(min, max, mid, a)
	elsif square < a
		min = mid
		mid = min + (max - min) / 2
		return sqrt(min, max, mid, a)
	end
end

#boilerplate code
t = gets.to_i
for i in 1..t do
	a = gets.strip.to_i
	puts do_stuff(a)
end

