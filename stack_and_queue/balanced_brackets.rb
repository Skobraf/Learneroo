def bracket_arr(text)
  bracket_arr = []
  text.each_char do |char|
    if char == '[' || char == ']' || char == '(' || char == ')' || char == '{' || char == '}'
      bracket_arr << char
    end
  end
  bracket_arr
end

def do_stuff(text)
  arr = bracket_arr(text)
  new_ar = []
  last_e = arr[0]
  arr.each do |bracket|
    new_ar.push(bracket)
    if bracket == ')'
      if last_e == '('
        new_ar.pop
        new_ar.pop
      end
    elsif bracket == ']'
      if last_e == '['
        new_ar.pop
        new_ar.pop
      end
    elsif bracket == '}'
      if last_e == '{'
        new_ar.pop
        new_ar.pop
      end
    end
    last_e = new_ar[-1]
  end
  if new_ar.empty?
  	puts 'true'
  	return
  else
  	puts 'false'
  	return
  end
end

t = gets.to_i
for i in 1..t do
	text = gets
	do_stuff(text)
end


