def do_stuff(a)
  if a == 0
    return a
  else
    return a + do_stuff(a - 1)
  end
end


#boilerplate code
t = gets.to_i
for i in 1..t do
	a = gets.strip.to_i
	puts do_stuff(a)
end