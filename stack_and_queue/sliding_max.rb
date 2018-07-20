

def do_stuff(ar, k)
  #your code here
  for i in 0..(ar.length - k) do
    max = ar[i]
    for j in i...(i+k) do
      if ar[j] > max
        max = ar[j]
      end
    end
    print max
  end
  puts ""
end

#boilerplate code
t = gets.to_i
for i in 1..t do
	temp = gets
	ar = gets.strip.split.map {|i| i.to_i}
	do_stuff(ar[1..-1], ar[0])
end